
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int strcmp (char*,char*) ;
 int use_arch_timestamp ;

__attribute__((used)) static void
init_arch_timestamp(void)
{
 char *str = getenv("JITDUMP_USE_ARCH_TIMESTAMP");

 if (!str || !*str || !strcmp(str, "0"))
  return;

 use_arch_timestamp = 1;
}
