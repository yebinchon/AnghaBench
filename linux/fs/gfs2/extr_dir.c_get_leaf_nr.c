
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gfs2_inode {int dummy; } ;
typedef int __be64 ;


 int PTR_ERR_OR_ZERO (int *) ;
 int be64_to_cpu (int ) ;
 int * gfs2_dir_get_hash_table (struct gfs2_inode*) ;

__attribute__((used)) static int get_leaf_nr(struct gfs2_inode *dip, u32 index,
         u64 *leaf_out)
{
 __be64 *hash;
 int error;

 hash = gfs2_dir_get_hash_table(dip);
 error = PTR_ERR_OR_ZERO(hash);

 if (!error)
  *leaf_out = be64_to_cpu(*(hash + index));

 return error;
}
