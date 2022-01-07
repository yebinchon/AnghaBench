
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_record {int dummy; } ;
struct TYPE_2__ {int value; } ;
struct tep_filter_arg {int type; TYPE_1__ boolean; } ;
struct tep_event {int dummy; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__INVALID_ARG_TYPE ;







 int get_arg_value (struct tep_event*,struct tep_filter_arg*,struct tep_record*,int*) ;
 int test_num (struct tep_event*,struct tep_filter_arg*,struct tep_record*,int*) ;
 int test_op (struct tep_event*,struct tep_filter_arg*,struct tep_record*,int*) ;
 int test_str (struct tep_event*,struct tep_filter_arg*,struct tep_record*,int*) ;

__attribute__((used)) static int test_filter(struct tep_event *event, struct tep_filter_arg *arg,
         struct tep_record *record, enum tep_errno *err)
{
 if (*err) {



  return 0;
 }

 switch (arg->type) {
 case 134:

  return arg->boolean.value;

 case 130:
  return test_op(event, arg, record, err);

 case 131:
  return test_num(event, arg, record, err);

 case 129:
  return test_str(event, arg, record, err);

 case 133:
 case 128:
 case 132:




  return !!get_arg_value(event, arg, record, err);

 default:
  if (!*err)
   *err = TEP_ERRNO__INVALID_ARG_TYPE;
  return 0;
 }
}
