
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_INODE_UPDATE_CREDITS ;
 int ocfs2_quota_trans_credits (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_link_credits(struct super_block *sb)
{
 return 2 * OCFS2_INODE_UPDATE_CREDITS + 4 +
        ocfs2_quota_trans_credits(sb);
}
