
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int MAX_CONTIG_BYTES ;
 unsigned int ocfs2_clusters_for_bytes (struct super_block*,int ) ;

__attribute__((used)) static inline unsigned int ocfs2_cow_contig_clusters(struct super_block *sb)
{
 return ocfs2_clusters_for_bytes(sb, MAX_CONTIG_BYTES);
}
