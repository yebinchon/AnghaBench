
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;
typedef int cs ;
typedef int cpu_set_t ;


 int CPU_ZERO (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,int,int *) ;

int main(void)
{
 int ret = 0;
 pthread_attr_t thread_attr;
 cpu_set_t cs;

 pthread_attr_init(&thread_attr);
 CPU_ZERO(&cs);

 ret = pthread_attr_setaffinity_np(&thread_attr, sizeof(cs), &cs);

 return ret;
}
