
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_record {int dummy; } ;
struct TYPE_2__ {int type; int right; int left; } ;
struct tep_filter_arg {TYPE_1__ op; } ;
struct tep_event {int dummy; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__INVALID_OP_TYPE ;



 int test_filter (struct tep_event*,int ,struct tep_record*,int*) ;

__attribute__((used)) static int test_op(struct tep_event *event, struct tep_filter_arg *arg,
     struct tep_record *record, enum tep_errno *err)
{
 switch (arg->op.type) {
 case 130:
  return test_filter(event, arg->op.left, record, err) &&
   test_filter(event, arg->op.right, record, err);

 case 128:
  return test_filter(event, arg->op.left, record, err) ||
   test_filter(event, arg->op.right, record, err);

 case 129:
  return !test_filter(event, arg->op.right, record, err);

 default:
  if (!*err)
   *err = TEP_ERRNO__INVALID_OP_TYPE;
  return 0;
 }
}
