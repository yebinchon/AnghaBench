
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_clustersize_bits; } ;


 TYPE_1__* OCFS2_SB (struct super_block*) ;

__attribute__((used)) static inline unsigned int ocfs2_clusters_to_megabytes(struct super_block *sb,
             unsigned int clusters)
{
 return clusters >> (20 - OCFS2_SB(sb)->s_clustersize_bits);
}
