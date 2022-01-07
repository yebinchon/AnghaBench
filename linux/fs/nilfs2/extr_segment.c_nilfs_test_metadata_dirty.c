
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_dat; int ns_sufile; int ns_cpfile; } ;
struct nilfs_root {int ifile; } ;


 scalar_t__ nilfs_doing_gc () ;
 scalar_t__ nilfs_mdt_fetch_dirty (int ) ;

__attribute__((used)) static int nilfs_test_metadata_dirty(struct the_nilfs *nilfs,
         struct nilfs_root *root)
{
 int ret = 0;

 if (nilfs_mdt_fetch_dirty(root->ifile))
  ret++;
 if (nilfs_mdt_fetch_dirty(nilfs->ns_cpfile))
  ret++;
 if (nilfs_mdt_fetch_dirty(nilfs->ns_sufile))
  ret++;
 if ((ret || nilfs_doing_gc()) && nilfs_mdt_fetch_dirty(nilfs->ns_dat))
  ret++;
 return ret;
}
