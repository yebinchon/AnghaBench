
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_sb_info {int inocache_lock; int inocache_wq; } ;
struct jffs2_raw_node_ref {int dummy; } ;
struct jffs2_raw_inode {int dummy; } ;
struct jffs2_inode_info {TYPE_1__* inocache; } ;
struct jffs2_inode_cache {int dummy; } ;
struct TYPE_5__ {int state; int ino; int pino_nlink; struct jffs2_raw_node_ref* nodes; } ;


 int BUG () ;
 int ENOENT ;
 int ENOMEM ;






 int JFFS2_ERROR (char*,...) ;
 int dbg_readinode (char*,...) ;
 int jffs2_add_ino_cache (struct jffs2_sb_info*,TYPE_1__*) ;
 TYPE_1__* jffs2_alloc_inode_cache () ;
 int jffs2_do_read_inode_internal (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*) ;
 TYPE_1__* jffs2_get_ino_cache (struct jffs2_sb_info*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sleep_on_spinunlock (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jffs2_do_read_inode(struct jffs2_sb_info *c, struct jffs2_inode_info *f,
   uint32_t ino, struct jffs2_raw_inode *latest_node)
{
 dbg_readinode("read inode #%u\n", ino);

 retry_inocache:
 spin_lock(&c->inocache_lock);
 f->inocache = jffs2_get_ino_cache(c, ino);

 if (f->inocache) {

  switch(f->inocache->state) {
  case 128:
  case 133:
   f->inocache->state = 129;
   break;

  case 132:
  case 131:



   dbg_readinode("waiting for ino #%u in state %d\n", ino, f->inocache->state);
   sleep_on_spinunlock(&c->inocache_wq, &c->inocache_lock);
   goto retry_inocache;

  case 129:
  case 130:



   JFFS2_ERROR("Eep. Trying to read_inode #%u when it's already in state %d!\n", ino, f->inocache->state);

   f->inocache = ((void*)0);
   break;

  default:
   BUG();
  }
 }
 spin_unlock(&c->inocache_lock);

 if (!f->inocache && ino == 1) {

  f->inocache = jffs2_alloc_inode_cache();
  if (!f->inocache) {
   JFFS2_ERROR("cannot allocate inocache for root inode\n");
   return -ENOMEM;
  }
  dbg_readinode("creating inocache for root inode\n");
  memset(f->inocache, 0, sizeof(struct jffs2_inode_cache));
  f->inocache->ino = f->inocache->pino_nlink = 1;
  f->inocache->nodes = (struct jffs2_raw_node_ref *)f->inocache;
  f->inocache->state = 129;
  jffs2_add_ino_cache(c, f->inocache);
 }
 if (!f->inocache) {
  JFFS2_ERROR("requested to read a nonexistent ino %u\n", ino);
  return -ENOENT;
 }

 return jffs2_do_read_inode_internal(c, f, latest_node);
}
