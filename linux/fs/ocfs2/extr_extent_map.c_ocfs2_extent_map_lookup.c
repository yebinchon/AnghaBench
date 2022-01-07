
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_lock; int ip_extent_map; } ;
struct ocfs2_extent_map_item {unsigned int ei_cpos; unsigned int ei_phys; unsigned int ei_clusters; unsigned int ei_flags; } ;
struct inode {int dummy; } ;


 int ENOENT ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int __ocfs2_extent_map_lookup (int *,unsigned int,struct ocfs2_extent_map_item**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_extent_map_lookup(struct inode *inode, unsigned int cpos,
       unsigned int *phys, unsigned int *len,
       unsigned int *flags)
{
 unsigned int coff;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_extent_map_item *emi;

 spin_lock(&oi->ip_lock);

 __ocfs2_extent_map_lookup(&oi->ip_extent_map, cpos, &emi);
 if (emi) {
  coff = cpos - emi->ei_cpos;
  *phys = emi->ei_phys + coff;
  if (len)
   *len = emi->ei_clusters - coff;
  if (flags)
   *flags = emi->ei_flags;
 }

 spin_unlock(&oi->ip_lock);

 if (emi == ((void*)0))
  return -ENOENT;

 return 0;
}
