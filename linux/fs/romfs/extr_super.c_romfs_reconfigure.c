
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {int sb_flags; TYPE_1__* root; } ;
struct TYPE_2__ {int d_sb; } ;


 int SB_RDONLY ;
 int sync_filesystem (int ) ;

__attribute__((used)) static int romfs_reconfigure(struct fs_context *fc)
{
 sync_filesystem(fc->root->d_sb);
 fc->sb_flags |= SB_RDONLY;
 return 0;
}
