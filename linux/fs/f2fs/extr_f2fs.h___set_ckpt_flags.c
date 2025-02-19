
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_checkpoint {int ckpt_flags; } ;


 int cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static inline void __set_ckpt_flags(struct f2fs_checkpoint *cp, unsigned int f)
{
 unsigned int ckpt_flags;

 ckpt_flags = le32_to_cpu(cp->ckpt_flags);
 ckpt_flags |= f;
 cp->ckpt_flags = cpu_to_le32(ckpt_flags);
}
