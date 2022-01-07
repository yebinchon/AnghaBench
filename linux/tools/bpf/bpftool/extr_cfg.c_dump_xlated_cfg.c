
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg {int dummy; } ;
struct bpf_insn {int dummy; } ;
typedef int cfg ;


 scalar_t__ cfg_build (struct cfg*,struct bpf_insn*,unsigned int) ;
 int cfg_destroy (struct cfg*) ;
 int cfg_dump (struct cfg*) ;
 int memset (struct cfg*,int ,int) ;

void dump_xlated_cfg(void *buf, unsigned int len)
{
 struct bpf_insn *insn = buf;
 struct cfg cfg;

 memset(&cfg, 0, sizeof(cfg));
 if (cfg_build(&cfg, insn, len))
  return;

 cfg_dump(&cfg);

 cfg_destroy(&cfg);
}
