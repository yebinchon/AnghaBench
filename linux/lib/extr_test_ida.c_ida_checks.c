
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IDA_BUG_ON (int *,int) ;
 int ida ;
 int ida_check_alloc (int *) ;
 int ida_check_conv (int *) ;
 int ida_check_destroy (int *) ;
 int ida_check_leaf (int *,int) ;
 int ida_check_max (int *) ;
 int ida_is_empty (int *) ;
 int printk (char*,scalar_t__,scalar_t__) ;
 scalar_t__ tests_passed ;
 scalar_t__ tests_run ;

__attribute__((used)) static int ida_checks(void)
{
 IDA_BUG_ON(&ida, !ida_is_empty(&ida));
 ida_check_alloc(&ida);
 ida_check_destroy(&ida);
 ida_check_leaf(&ida, 0);
 ida_check_leaf(&ida, 1024);
 ida_check_leaf(&ida, 1024 * 64);
 ida_check_max(&ida);
 ida_check_conv(&ida);

 printk("IDA: %u of %u tests passed\n", tests_passed, tests_run);
 return (tests_run != tests_passed) ? 0 : -EINVAL;
}
