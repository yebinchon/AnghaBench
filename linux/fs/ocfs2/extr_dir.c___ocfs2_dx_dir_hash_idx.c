
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ocfs2_super {unsigned int osb_dx_mask; } ;



__attribute__((used)) static inline unsigned int __ocfs2_dx_dir_hash_idx(struct ocfs2_super *osb,
         u32 minor_hash)
{
 return minor_hash & osb->osb_dx_mask;
}
