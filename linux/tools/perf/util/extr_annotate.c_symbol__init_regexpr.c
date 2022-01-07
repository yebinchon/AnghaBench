
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_EXTENDED ;
 int file_lineno ;
 int regcomp (int *,char*,int ) ;

__attribute__((used)) static __attribute__((constructor)) void symbol__init_regexpr(void)
{
 regcomp(&file_lineno, "^/[^:]+:([0-9]+)", REG_EXTENDED);
}
