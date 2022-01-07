
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_EXTENDED ;
 int SDT_OP_REGEX ;
 int pr_debug4 (char*) ;
 int regcomp (int *,int ,int ) ;
 int sdt_op_regex ;

__attribute__((used)) static int sdt_init_op_regex(void)
{
 static int initialized;
 int ret = 0;

 if (initialized)
  return 0;

 ret = regcomp(&sdt_op_regex, SDT_OP_REGEX, REG_EXTENDED);
 if (ret < 0) {
  pr_debug4("Regex compilation error.\n");
  return ret;
 }

 initialized = 1;
 return 0;
}
