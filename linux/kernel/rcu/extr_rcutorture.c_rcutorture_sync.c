
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* sync ) () ;} ;


 TYPE_1__* cur_ops ;
 int stub1 () ;

__attribute__((used)) static void rcutorture_sync(void)
{
 static unsigned long n;

 if (cur_ops->sync && !(++n & 0xfff))
  cur_ops->sync();
}
