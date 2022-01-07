
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_group_desc {int bg_free_bits_count; } ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline int ocfs2_block_group_reasonably_empty(struct ocfs2_group_desc *bg,
           u32 wanted)
{
 return le16_to_cpu(bg->bg_free_bits_count) > wanted;
}
