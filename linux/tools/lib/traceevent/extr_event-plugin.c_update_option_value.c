
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_plugin_option {char const* value; int set; } ;


 int free (char*) ;
 int lower_case (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int update_option_value(struct tep_plugin_option *op, const char *val)
{
 char *op_val;

 if (!val) {

  if (op->value)

   return 0;
  op->set ^= 1;
  return 0;
 }





 if (op->value) {
  op->value = val;
  return 0;
 }



 op_val = strdup(val);
 if (!op_val)
  return -1;
 lower_case(op_val);

 if (strcmp(val, "1") == 0 || strcmp(val, "true") == 0)
  op->set = 1;
 else if (strcmp(val, "0") == 0 || strcmp(val, "false") == 0)
  op->set = 0;
 free(op_val);

 return 0;
}
