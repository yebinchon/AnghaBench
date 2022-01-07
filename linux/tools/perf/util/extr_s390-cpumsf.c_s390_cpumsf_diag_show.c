
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_diag_entry {scalar_t__ def; unsigned long long I; } ;


 scalar_t__ S390_CPUMSF_DIAG_DEF_FIRST ;
 scalar_t__ be16toh (scalar_t__) ;
 unsigned long long be64toh (unsigned long long) ;
 int color_fprintf (int ,char const*,char*,size_t,scalar_t__,char) ;
 int pr_err (char*,size_t) ;
 int stdout ;

__attribute__((used)) static bool s390_cpumsf_diag_show(const char *color, size_t pos,
      struct hws_diag_entry *diagp)
{
 struct hws_diag_entry *diag = diagp;

 struct hws_diag_entry local;
 unsigned long long word = be64toh(*(unsigned long long *)diagp);

 local.def = be16toh(diagp->def);
 local.I = word >> 32 & 0x1;
 diag = &local;

 if (diag->def < S390_CPUMSF_DIAG_DEF_FIRST) {
  pr_err("Invalid AUX trace diagnostic entry [%#08zx]\n", pos);
  return 0;
 }
 color_fprintf(stdout, color, "    [%#08zx] Diag    Def:%04x %c\n",
        pos, diag->def, diag->I ? 'I' : ' ');
 return 1;
}
