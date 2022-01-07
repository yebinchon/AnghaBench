
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int define_config (char const*,int,unsigned int) ;
 scalar_t__ is_defined_config (char const*,int,unsigned int) ;
 int print_dep (char const*,int,char*) ;
 unsigned int strhash (char const*,int) ;

__attribute__((used)) static void use_config(const char *m, int slen)
{
 unsigned int hash = strhash(m, slen);

 if (is_defined_config(m, slen, hash))
     return;

 define_config(m, slen, hash);
 print_dep(m, slen, "include/config");
}
