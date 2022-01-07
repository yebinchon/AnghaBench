
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lockdep_assert_held (int *) ;
 int module_mutex ;

__attribute__((used)) static void module_assert_mutex(void)
{
 lockdep_assert_held(&module_mutex);
}
