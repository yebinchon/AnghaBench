
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int do_concurrent_test () ;

__attribute__((used)) static int vmalloc_test_init(void)
{
 do_concurrent_test();
 return -EAGAIN;
}
