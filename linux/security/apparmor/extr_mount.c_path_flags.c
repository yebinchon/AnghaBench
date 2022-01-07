
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_2__* dentry; } ;
struct aa_profile {int path_flags; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mode; } ;


 int AA_BUG (int) ;
 int PATH_IS_DIR ;
 scalar_t__ S_ISDIR (int ) ;

__attribute__((used)) static int path_flags(struct aa_profile *profile, const struct path *path)
{
 AA_BUG(!profile);
 AA_BUG(!path);

 return profile->path_flags |
  (S_ISDIR(path->dentry->d_inode->i_mode) ? PATH_IS_DIR : 0);
}
