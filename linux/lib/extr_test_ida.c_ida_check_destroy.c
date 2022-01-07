
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int IDA_BUG_ON (struct ida*,int) ;
 int ida_check_destroy_1 (struct ida*,int) ;
 int ida_destroy (struct ida*) ;
 int ida_is_empty (struct ida*) ;

__attribute__((used)) static void ida_check_destroy(struct ida *ida)
{

 IDA_BUG_ON(ida, !ida_is_empty(ida));
 ida_destroy(ida);
 IDA_BUG_ON(ida, !ida_is_empty(ida));

 ida_check_destroy_1(ida, 0);
 ida_check_destroy_1(ida, 1);
 ida_check_destroy_1(ida, 1023);
 ida_check_destroy_1(ida, 1024);
 ida_check_destroy_1(ida, 12345678);
}
