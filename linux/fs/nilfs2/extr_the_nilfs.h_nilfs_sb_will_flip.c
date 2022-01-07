
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sbwcount; } ;



__attribute__((used)) static inline int nilfs_sb_will_flip(struct the_nilfs *nilfs)
{
 int flip_bits = nilfs->ns_sbwcount & 0x0FL;

 return (flip_bits != 0x08 && flip_bits != 0x0F);
}
