
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__* val; } ;
struct fsnotify_mark_connector {unsigned int type; scalar_t__ flags; TYPE_1__ fsid; int * obj; int list; int lock; } ;
typedef int fsnotify_connp_t ;
typedef TYPE_1__ __kernel_fsid_t ;


 int ENOMEM ;
 scalar_t__ FSNOTIFY_CONN_FLAG_HAS_FSID ;
 unsigned int FSNOTIFY_OBJ_TYPE_INODE ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ cmpxchg (int *,int *,struct fsnotify_mark_connector*) ;
 int fsnotify_conn_inode (struct fsnotify_mark_connector*) ;
 int fsnotify_mark_connector_cachep ;
 struct inode* igrab (int ) ;
 int iput (struct inode*) ;
 struct fsnotify_mark_connector* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct fsnotify_mark_connector*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fsnotify_attach_connector_to_object(fsnotify_connp_t *connp,
            unsigned int type,
            __kernel_fsid_t *fsid)
{
 struct inode *inode = ((void*)0);
 struct fsnotify_mark_connector *conn;

 conn = kmem_cache_alloc(fsnotify_mark_connector_cachep, GFP_KERNEL);
 if (!conn)
  return -ENOMEM;
 spin_lock_init(&conn->lock);
 INIT_HLIST_HEAD(&conn->list);
 conn->type = type;
 conn->obj = connp;

 if (fsid) {
  conn->fsid = *fsid;
  conn->flags = FSNOTIFY_CONN_FLAG_HAS_FSID;
 } else {
  conn->fsid.val[0] = conn->fsid.val[1] = 0;
  conn->flags = 0;
 }
 if (conn->type == FSNOTIFY_OBJ_TYPE_INODE)
  inode = igrab(fsnotify_conn_inode(conn));




 if (cmpxchg(connp, ((void*)0), conn)) {

  if (inode)
   iput(inode);
  kmem_cache_free(fsnotify_mark_connector_cachep, conn);
 }

 return 0;
}
