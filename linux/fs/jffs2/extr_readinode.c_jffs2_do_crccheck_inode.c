
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_inode {int dummy; } ;
struct jffs2_inode_info {int sem; struct jffs2_inode_cache* inocache; } ;
struct jffs2_inode_cache {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int jffs2_do_clear_inode (struct jffs2_sb_info*,struct jffs2_inode_info*) ;
 int jffs2_do_read_inode_internal (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*) ;
 int jffs2_xattr_do_crccheck_inode (struct jffs2_sb_info*,struct jffs2_inode_cache*) ;
 int kfree (struct jffs2_inode_info*) ;
 struct jffs2_inode_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int jffs2_do_crccheck_inode(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic)
{
 struct jffs2_raw_inode n;
 struct jffs2_inode_info *f = kzalloc(sizeof(*f), GFP_KERNEL);
 int ret;

 if (!f)
  return -ENOMEM;

 mutex_init(&f->sem);
 mutex_lock(&f->sem);
 f->inocache = ic;

 ret = jffs2_do_read_inode_internal(c, f, &n);
 mutex_unlock(&f->sem);
 jffs2_do_clear_inode(c, f);
 jffs2_xattr_do_crccheck_inode(c, ic);
 kfree (f);
 return ret;
}
