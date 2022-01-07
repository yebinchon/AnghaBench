
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation {double hit_insn; double cover_insn; scalar_t__ total_insn; scalar_t__ hit_cycles; } ;


 int scnprintf (char*,int,char*,double,double) ;

__attribute__((used)) static void ipc_coverage_string(char *bf, int size, struct annotation *notes)
{
 double ipc = 0.0, coverage = 0.0;

 if (notes->hit_cycles)
  ipc = notes->hit_insn / ((double)notes->hit_cycles);

 if (notes->total_insn) {
  coverage = notes->cover_insn * 100.0 /
   ((double)notes->total_insn);
 }

 scnprintf(bf, size, "(Average IPC: %.2f, IPC Coverage: %.1f%%)",
    ipc, coverage);
}
