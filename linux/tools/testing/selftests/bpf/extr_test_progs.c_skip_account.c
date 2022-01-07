
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* test; int skip_cnt; } ;
struct TYPE_3__ {scalar_t__ skip_cnt; } ;


 TYPE_2__ env ;

__attribute__((used)) static void skip_account(void)
{
 if (env.test->skip_cnt) {
  env.skip_cnt++;
  env.test->skip_cnt = 0;
 }
}
