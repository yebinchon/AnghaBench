
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int ainsn; int opcode; } ;
struct arch_specific_insn {int dummy; } ;
typedef int kprobe_opcode_t ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void copy_kprobe(struct kprobe *ap, struct kprobe *p)
{
 memcpy(&p->opcode, &ap->opcode, sizeof(kprobe_opcode_t));
 memcpy(&p->ainsn, &ap->ainsn, sizeof(struct arch_specific_insn));
}
