
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tep_filter_arg* right; } ;
struct tep_filter_arg {TYPE_1__ op; } ;



__attribute__((used)) static struct tep_filter_arg *
rotate_op_right(struct tep_filter_arg *a, struct tep_filter_arg *b)
{
 struct tep_filter_arg *arg;

 arg = a->op.right;
 a->op.right = b;
 return arg;
}
