
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_EXTENDED ;
 int SDT_OP_REGEX1 ;
 int SDT_OP_REGEX2 ;
 int pr_debug4 (char*) ;
 int regcomp (int *,int ,int ) ;
 int regfree (int *) ;
 int sdt_op_regex1 ;
 int sdt_op_regex2 ;

__attribute__((used)) static int sdt_init_op_regex(void)
{
 static int initialized;
 int ret = 0;

 if (initialized)
  return 0;

 ret = regcomp(&sdt_op_regex1, SDT_OP_REGEX1, REG_EXTENDED);
 if (ret)
  goto error;

 ret = regcomp(&sdt_op_regex2, SDT_OP_REGEX2, REG_EXTENDED);
 if (ret)
  goto free_regex1;

 initialized = 1;
 return 0;

free_regex1:
 regfree(&sdt_op_regex1);
error:
 pr_debug4("Regex compilation error.\n");
 return ret;
}
