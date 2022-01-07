
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool bpf_core_is_flavor_sep(const char *s)
{

 return s[0] != '_' &&
        s[1] == '_' && s[2] == '_' && s[3] == '_' &&
        s[4] != '_';
}
