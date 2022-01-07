
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_clustersize_bits; } ;


 int BUILD_BUG_ON (int) ;
 int OCFS2_MAX_CLUSTERSIZE ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;

__attribute__((used)) static inline unsigned int ocfs2_megabytes_to_clusters(struct super_block *sb,
             unsigned int megs)
{
 BUILD_BUG_ON(OCFS2_MAX_CLUSTERSIZE > 1048576);

 return megs << (20 - OCFS2_SB(sb)->s_clustersize_bits);
}
