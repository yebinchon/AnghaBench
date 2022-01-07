
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_eo; int rm_so; } ;
typedef TYPE_1__ regmatch_t ;


 int ENOMEM ;
 int SDT_ARG_SKIP ;
 int SDT_ARG_VALID ;
 int pr_debug4 (char*,char*) ;
 int regexec (int *,char*,int,TYPE_1__*,int ) ;
 int scnprintf (char*,int,char*,char,...) ;
 int sdt_init_op_regex () ;
 int sdt_op_regex1 ;
 int sdt_op_regex2 ;
 char* zalloc (int) ;

int arch_sdt_arg_parse_op(char *old_op, char **new_op)
{
 int ret, new_len;
 regmatch_t rm[5];
 char prefix;


 if (old_op[0] == 'i') {
  pr_debug4("Skipping unsupported SDT argument: %s\n", old_op);
  return SDT_ARG_SKIP;
 }

 ret = sdt_init_op_regex();
 if (ret < 0)
  return ret;

 if (!regexec(&sdt_op_regex1, old_op, 3, rm, 0)) {


  new_len = 5;
  new_len += (int)(rm[2].rm_eo - rm[2].rm_so);

  *new_op = zalloc(new_len);
  if (!*new_op)
   return -ENOMEM;

  scnprintf(*new_op, new_len, "%%gpr%.*s",
   (int)(rm[2].rm_eo - rm[2].rm_so), old_op + rm[2].rm_so);
 } else if (!regexec(&sdt_op_regex2, old_op, 5, rm, 0)) {




  prefix = (rm[1].rm_so == -1) ? '+' : '-';

  new_len = 8;
  new_len += (int)(rm[2].rm_eo - rm[2].rm_so);
  new_len += (int)(rm[4].rm_eo - rm[4].rm_so);

  *new_op = zalloc(new_len);
  if (!*new_op)
   return -ENOMEM;

  scnprintf(*new_op, new_len, "%c%.*s(%%gpr%.*s)", prefix,
   (int)(rm[2].rm_eo - rm[2].rm_so), old_op + rm[2].rm_so,
   (int)(rm[4].rm_eo - rm[4].rm_so), old_op + rm[4].rm_so);
 } else {
  pr_debug4("Skipping unsupported SDT argument: %s\n", old_op);
  return SDT_ARG_SKIP;
 }

 return SDT_ARG_VALID;
}
