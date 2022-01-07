
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regs_dump {size_t abi; } ;


 size_t PERF_SAMPLE_REGS_ABI_64 ;
 char const** regs_abi ;

__attribute__((used)) static inline const char *regs_dump_abi(struct regs_dump *d)
{
 if (d->abi > PERF_SAMPLE_REGS_ABI_64)
  return "unknown";

 return regs_abi[d->abi];
}
