
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_record {int dummy; } ;
struct TYPE_2__ {int type; int reg; int val; int * field; } ;
struct tep_filter_arg {TYPE_1__ str; } ;
struct tep_event {int dummy; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__ILLEGAL_STRING_CMP ;




 int comm ;
 char* get_comm (struct tep_event*,struct tep_record*) ;
 char* get_field_str (struct tep_filter_arg*,struct tep_record*) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int test_str(struct tep_event *event, struct tep_filter_arg *arg,
      struct tep_record *record, enum tep_errno *err)
{
 const char *val;

 if (arg->str.field == &comm)
  val = get_comm(event, record);
 else
  val = get_field_str(arg, record);

 switch (arg->str.type) {
 case 131:
  return strcmp(val, arg->str.val) == 0;

 case 130:
  return strcmp(val, arg->str.val) != 0;

 case 128:

  return !regexec(&arg->str.reg, val, 0, ((void*)0), 0);

 case 129:
  return regexec(&arg->str.reg, val, 0, ((void*)0), 0);

 default:
  if (!*err)
   *err = TEP_ERRNO__ILLEGAL_STRING_CMP;
  return 0;
 }
}
