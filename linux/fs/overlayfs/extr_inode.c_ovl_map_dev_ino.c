
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u64 ;
struct ovl_layer {TYPE_2__* fs; scalar_t__ fsid; } ;
struct kstat {unsigned int ino; int dev; } ;
struct dentry {TYPE_1__* d_inode; TYPE_3__* d_sb; } ;
struct TYPE_7__ {int s_dev; } ;
struct TYPE_6__ {int pseudo_dev; } ;
struct TYPE_5__ {unsigned int i_ino; int i_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int ovl_same_sb (TYPE_3__*) ;
 unsigned int ovl_xino_bits (TYPE_3__*) ;
 int pr_warn_ratelimited (char*,struct dentry*,unsigned int,unsigned int) ;

__attribute__((used)) static int ovl_map_dev_ino(struct dentry *dentry, struct kstat *stat,
      struct ovl_layer *lower_layer)
{
 bool samefs = ovl_same_sb(dentry->d_sb);
 unsigned int xinobits = ovl_xino_bits(dentry->d_sb);

 if (samefs) {





  stat->dev = dentry->d_sb->s_dev;
  return 0;
 } else if (xinobits) {
  unsigned int shift = 64 - xinobits;
  if (stat->ino >> shift) {
   pr_warn_ratelimited("overlayfs: inode number too big (%pd2, ino=%llu, xinobits=%d)\n",
         dentry, stat->ino, xinobits);
  } else {
   if (lower_layer)
    stat->ino |= ((u64)lower_layer->fsid) << shift;

   stat->dev = dentry->d_sb->s_dev;
   return 0;
  }
 }


 if (S_ISDIR(dentry->d_inode->i_mode)) {
  stat->dev = dentry->d_sb->s_dev;
  stat->ino = dentry->d_inode->i_ino;
 } else if (lower_layer && lower_layer->fsid) {







  stat->dev = lower_layer->fs->pseudo_dev;
 }

 return 0;
}
