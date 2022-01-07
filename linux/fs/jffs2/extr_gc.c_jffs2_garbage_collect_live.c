
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {int erase_completion_lock; struct jffs2_eraseblock* gcblock; } ;
struct jffs2_raw_node_ref {int dummy; } ;
struct jffs2_node_frag {scalar_t__ ofs; scalar_t__ size; struct jffs2_full_dnode* node; } ;
struct jffs2_inode_info {int sem; TYPE_1__* inocache; struct jffs2_full_dirent* dents; int fragtree; struct jffs2_full_dnode* metadata; } ;
struct jffs2_full_dnode {scalar_t__ frags; struct jffs2_raw_node_ref* raw; } ;
struct jffs2_full_dirent {scalar_t__ ino; struct jffs2_raw_node_ref* raw; struct jffs2_full_dirent* next; } ;
struct jffs2_eraseblock {int dummy; } ;
struct TYPE_2__ {int ino; struct jffs2_raw_node_ref* nodes; } ;


 int BUG () ;
 int EBADFD ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ REF_PRISTINE ;
 struct jffs2_node_frag* frag_first (int *) ;
 struct jffs2_node_frag* frag_next (struct jffs2_node_frag*) ;
 int jffs2_dbg (int,char*) ;
 int jffs2_dbg_dump_node (struct jffs2_sb_info*,int ) ;
 int jffs2_garbage_collect_deletion_dirent (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dirent*) ;
 int jffs2_garbage_collect_dirent (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dirent*) ;
 int jffs2_garbage_collect_dnode (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dnode*,scalar_t__,scalar_t__) ;
 int jffs2_garbage_collect_hole (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dnode*,scalar_t__,scalar_t__) ;
 int jffs2_garbage_collect_metadata (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dnode*) ;
 int jffs2_garbage_collect_pristine (struct jffs2_sb_info*,TYPE_1__*,struct jffs2_raw_node_ref*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,...) ;
 scalar_t__ ref_flags (struct jffs2_raw_node_ref*) ;
 scalar_t__ ref_obsolete (struct jffs2_raw_node_ref*) ;
 int ref_offset (struct jffs2_raw_node_ref*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int jffs2_garbage_collect_live(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb,
          struct jffs2_raw_node_ref *raw, struct jffs2_inode_info *f)
{
 struct jffs2_node_frag *frag;
 struct jffs2_full_dnode *fn = ((void*)0);
 struct jffs2_full_dirent *fd;
 uint32_t start = 0, end = 0, nrfrags = 0;
 int ret = 0;

 mutex_lock(&f->sem);




 spin_lock(&c->erase_completion_lock);

 if (c->gcblock != jeb) {
  spin_unlock(&c->erase_completion_lock);
  jffs2_dbg(1, "GC block is no longer gcblock. Restart\n");
  goto upnout;
 }
 if (ref_obsolete(raw)) {
  spin_unlock(&c->erase_completion_lock);
  jffs2_dbg(1, "node to be GC'd was obsoleted in the meantime.\n");

  goto upnout;
 }
 spin_unlock(&c->erase_completion_lock);


 if (f->metadata && f->metadata->raw == raw) {
  fn = f->metadata;
  ret = jffs2_garbage_collect_metadata(c, jeb, f, fn);
  goto upnout;
 }


 for (frag = frag_first(&f->fragtree); frag; frag = frag_next(frag)) {
  if (frag->node && frag->node->raw == raw) {
   fn = frag->node;
   end = frag->ofs + frag->size;
   if (!nrfrags++)
    start = frag->ofs;
   if (nrfrags == frag->node->frags)
    break;
  }
 }
 if (fn) {
  if (ref_flags(raw) == REF_PRISTINE) {
   ret = jffs2_garbage_collect_pristine(c, f->inocache, raw);
   if (!ret) {

    frag->node->raw = f->inocache->nodes;
   }
   if (ret != -EBADFD)
    goto upnout;
  }

  if((start >> PAGE_SHIFT) < ((end-1) >> PAGE_SHIFT)) {

   ret = jffs2_garbage_collect_hole(c, jeb, f, fn, start, end);
  } else {

   ret = jffs2_garbage_collect_dnode(c, jeb, f, fn, start, end);
  }
  goto upnout;
 }


 for (fd = f->dents; fd; fd=fd->next) {
  if (fd->raw == raw)
   break;
 }

 if (fd && fd->ino) {
  ret = jffs2_garbage_collect_dirent(c, jeb, f, fd);
 } else if (fd) {
  ret = jffs2_garbage_collect_deletion_dirent(c, jeb, f, fd);
 } else {
  pr_warn("Raw node at 0x%08x wasn't in node lists for ino #%u\n",
   ref_offset(raw), f->inocache->ino);
  if (ref_obsolete(raw)) {
   pr_warn("But it's obsolete so we don't mind too much\n");
  } else {
   jffs2_dbg_dump_node(c, ref_offset(raw));
   BUG();
  }
 }
 upnout:
 mutex_unlock(&f->sem);

 return ret;
}
