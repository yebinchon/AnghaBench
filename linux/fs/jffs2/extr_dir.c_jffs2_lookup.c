
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct jffs2_inode_info {int sem; struct jffs2_full_dirent* dents; } ;
struct jffs2_full_dirent {unsigned int nhash; scalar_t__ version; scalar_t__ ino; int name; struct jffs2_full_dirent* next; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENAMETOOLONG ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 scalar_t__ JFFS2_MAX_NAME_LEN ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 unsigned int full_name_hash (int *,int ,scalar_t__) ;
 int jffs2_dbg (int,char*) ;
 struct inode* jffs2_iget (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,scalar_t__) ;
 scalar_t__ strlen (int ) ;
 int strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static struct dentry *jffs2_lookup(struct inode *dir_i, struct dentry *target,
       unsigned int flags)
{
 struct jffs2_inode_info *dir_f;
 struct jffs2_full_dirent *fd = ((void*)0), *fd_list;
 uint32_t ino = 0;
 struct inode *inode = ((void*)0);
 unsigned int nhash;

 jffs2_dbg(1, "jffs2_lookup()\n");

 if (target->d_name.len > JFFS2_MAX_NAME_LEN)
  return ERR_PTR(-ENAMETOOLONG);

 dir_f = JFFS2_INODE_INFO(dir_i);


 nhash = full_name_hash(((void*)0), target->d_name.name, target->d_name.len);

 mutex_lock(&dir_f->sem);


 for (fd_list = dir_f->dents; fd_list && fd_list->nhash <= nhash; fd_list = fd_list->next) {
  if (fd_list->nhash == nhash &&
      (!fd || fd_list->version > fd->version) &&
      strlen(fd_list->name) == target->d_name.len &&
      !strncmp(fd_list->name, target->d_name.name, target->d_name.len)) {
   fd = fd_list;
  }
 }
 if (fd)
  ino = fd->ino;
 mutex_unlock(&dir_f->sem);
 if (ino) {
  inode = jffs2_iget(dir_i->i_sb, ino);
  if (IS_ERR(inode))
   pr_warn("iget() failed for ino #%u\n", ino);
 }

 return d_splice_alias(inode, target);
}
