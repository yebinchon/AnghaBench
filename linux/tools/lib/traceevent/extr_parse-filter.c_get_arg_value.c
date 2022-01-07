
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tep_record {int dummy; } ;
struct TYPE_4__ {unsigned long long val; int type; } ;
struct TYPE_3__ {int field; } ;
struct tep_filter_arg {int type; TYPE_2__ value; TYPE_1__ field; } ;
struct tep_event {int dummy; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__INVALID_ARG_TYPE ;
 int TEP_ERRNO__NOT_A_NUMBER ;



 int TEP_FILTER_NUMBER ;
 unsigned long long get_exp_value (struct tep_event*,struct tep_filter_arg*,struct tep_record*,int*) ;
 unsigned long long get_value (struct tep_event*,int ,struct tep_record*) ;

__attribute__((used)) static unsigned long long
get_arg_value(struct tep_event *event, struct tep_filter_arg *arg,
       struct tep_record *record, enum tep_errno *err)
{
 switch (arg->type) {
 case 129:
  return get_value(event, arg->field.field, record);

 case 128:
  if (arg->value.type != TEP_FILTER_NUMBER) {
   if (!*err)
    *err = TEP_ERRNO__NOT_A_NUMBER;
  }
  return arg->value.val;

 case 130:
  return get_exp_value(event, arg, record, err);

 default:
  if (!*err)
   *err = TEP_ERRNO__INVALID_ARG_TYPE;
 }
 return 0;
}
