
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_record {int dummy; } ;
struct TYPE_2__ {int type; int right; int left; } ;
struct tep_filter_arg {TYPE_1__ num; } ;
struct tep_event {int dummy; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__ILLEGAL_INTEGER_CMP ;






 unsigned long long get_arg_value (struct tep_event*,int ,struct tep_record*,int*) ;

__attribute__((used)) static int test_num(struct tep_event *event, struct tep_filter_arg *arg,
      struct tep_record *record, enum tep_errno *err)
{
 unsigned long long lval, rval;

 lval = get_arg_value(event, arg->num.left, record, err);
 rval = get_arg_value(event, arg->num.right, record, err);

 if (*err) {



  return 0;
 }

 switch (arg->num.type) {
 case 133:
  return lval == rval;

 case 128:
  return lval != rval;

 case 131:
  return lval > rval;

 case 129:
  return lval < rval;

 case 132:
  return lval >= rval;

 case 130:
  return lval <= rval;

 default:
  if (!*err)
   *err = TEP_ERRNO__ILLEGAL_INTEGER_CMP;
  return 0;
 }
}
