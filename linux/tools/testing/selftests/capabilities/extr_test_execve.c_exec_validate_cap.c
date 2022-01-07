
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_other_validate_cap (char*,int,int,int,int) ;

__attribute__((used)) static void exec_validate_cap(bool eff, bool perm, bool inh, bool ambient)
{
 exec_other_validate_cap("./validate_cap", eff, perm, inh, ambient);
}
