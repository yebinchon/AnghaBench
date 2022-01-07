
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int ns_dat; int ns_sufile; int ns_cpfile; } ;
struct nilfs_sc_info {TYPE_2__* sc_root; TYPE_1__* sc_super; } ;
struct TYPE_4__ {int ifile; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;


 int nilfs_mdt_clear_dirty (int ) ;

__attribute__((used)) static void nilfs_segctor_clear_metadata_dirty(struct nilfs_sc_info *sci)
{
 struct the_nilfs *nilfs = sci->sc_super->s_fs_info;

 nilfs_mdt_clear_dirty(sci->sc_root->ifile);
 nilfs_mdt_clear_dirty(nilfs->ns_cpfile);
 nilfs_mdt_clear_dirty(nilfs->ns_sufile);
 nilfs_mdt_clear_dirty(nilfs->ns_dat);
}
