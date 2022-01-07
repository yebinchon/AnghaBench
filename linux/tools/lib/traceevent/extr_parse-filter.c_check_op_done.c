
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * right; } ;
struct TYPE_5__ {int * right; } ;
struct TYPE_4__ {int * right; } ;
struct tep_filter_arg {int type; TYPE_3__ num; TYPE_2__ op; TYPE_1__ exp; } ;
__attribute__((used)) static int check_op_done(struct tep_filter_arg *arg)
{
 switch (arg->type) {
 case 131:
  return arg->exp.right != ((void*)0);

 case 129:
  return arg->op.right != ((void*)0);

 case 130:
  return arg->num.right != ((void*)0);

 case 128:

  return 1;

 case 132:

  return 1;

 default:
  return 0;
 }
}
