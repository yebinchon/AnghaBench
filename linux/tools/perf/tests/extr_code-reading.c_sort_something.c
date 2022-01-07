
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_sort_something () ;

__attribute__((used)) static void sort_something(void)
{
 int i;

 for (i = 0; i < 10; i++)
  do_sort_something();
}
