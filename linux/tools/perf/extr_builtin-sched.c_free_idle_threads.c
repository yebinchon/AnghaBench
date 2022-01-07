
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__*) ;
 int idle_max_cpu ;
 scalar_t__* idle_threads ;
 int thread__delete (scalar_t__) ;

__attribute__((used)) static void free_idle_threads(void)
{
 int i;

 if (idle_threads == ((void*)0))
  return;

 for (i = 0; i < idle_max_cpu; ++i) {
  if ((idle_threads[i]))
   thread__delete(idle_threads[i]);
 }

 free(idle_threads);
}
