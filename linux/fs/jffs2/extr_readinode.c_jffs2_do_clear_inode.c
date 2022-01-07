
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int sem; TYPE_1__* inocache; struct jffs2_full_dirent* dents; int fragtree; TYPE_3__* metadata; } ;
struct jffs2_full_dirent {struct jffs2_full_dirent* next; } ;
struct TYPE_6__ {int raw; } ;
struct TYPE_5__ {scalar_t__ state; void* nodes; int pino_nlink; } ;


 int INO_STATE_CHECKEDABSENT ;
 scalar_t__ INO_STATE_CHECKING ;
 int INO_STATE_CLEARING ;
 int jffs2_del_ino_cache (struct jffs2_sb_info*,TYPE_1__*) ;
 int jffs2_free_full_dirent (struct jffs2_full_dirent*) ;
 int jffs2_free_full_dnode (TYPE_3__*) ;
 int jffs2_kill_fragtree (int *,struct jffs2_sb_info*) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,int ) ;
 int jffs2_set_inocache_state (struct jffs2_sb_info*,TYPE_1__*,int ) ;
 int jffs2_xattr_delete_inode (struct jffs2_sb_info*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void jffs2_do_clear_inode(struct jffs2_sb_info *c, struct jffs2_inode_info *f)
{
 struct jffs2_full_dirent *fd, *fds;
 int deleted;

 jffs2_xattr_delete_inode(c, f->inocache);
 mutex_lock(&f->sem);
 deleted = f->inocache && !f->inocache->pino_nlink;

 if (f->inocache && f->inocache->state != INO_STATE_CHECKING)
  jffs2_set_inocache_state(c, f->inocache, INO_STATE_CLEARING);

 if (f->metadata) {
  if (deleted)
   jffs2_mark_node_obsolete(c, f->metadata->raw);
  jffs2_free_full_dnode(f->metadata);
 }

 jffs2_kill_fragtree(&f->fragtree, deleted?c:((void*)0));

 fds = f->dents;
 while(fds) {
  fd = fds;
  fds = fd->next;
  jffs2_free_full_dirent(fd);
 }

 if (f->inocache && f->inocache->state != INO_STATE_CHECKING) {
  jffs2_set_inocache_state(c, f->inocache, INO_STATE_CHECKEDABSENT);
  if (f->inocache->nodes == (void *)f->inocache)
   jffs2_del_ino_cache(c, f->inocache);
 }

 mutex_unlock(&f->sem);
}
