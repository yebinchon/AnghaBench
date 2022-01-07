
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int pt; int map; } ;


 int THREADS ;
 int go_away ;
 int munmap (int ,int ) ;
 int page_size ;
 int pthread_join (int ,int *) ;
 struct thread_data* threads ;

__attribute__((used)) static int threads_destroy(void)
{
 struct thread_data *td0 = &threads[0];
 int i, err = 0;


 munmap(td0->map, page_size);

 go_away = 1;

 for (i = 1; !err && i < THREADS; i++)
  err = pthread_join(threads[i].pt, ((void*)0));

 return err;
}
