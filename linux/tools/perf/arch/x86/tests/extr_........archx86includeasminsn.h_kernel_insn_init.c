
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int dummy; } ;


 int insn_init (struct insn*,void const*,int,int) ;

__attribute__((used)) static inline void kernel_insn_init(struct insn *insn,
        const void *kaddr, int buf_len)
{



 insn_init(insn, kaddr, buf_len, 0);

}
