
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dwfl_thread_getframes (void*,void*,int *) ;

int main(void)
{





 dwfl_thread_getframes((void *) 1, (void *) 1, ((void*)0));
 return 0;
}
