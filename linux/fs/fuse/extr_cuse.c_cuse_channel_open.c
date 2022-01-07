
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_dev {int dummy; } ;
struct file {struct fuse_dev* private_data; TYPE_1__* f_cred; } ;
struct TYPE_6__ {int initialized; int release; } ;
struct cuse_conn {TYPE_2__ fc; int list; } ;
struct TYPE_5__ {int user_ns; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cuse_fc_release ;
 int cuse_send_init (struct cuse_conn*) ;
 int fuse_conn_init (TYPE_2__*,int ,int *,int *) ;
 int fuse_conn_put (TYPE_2__*) ;
 struct fuse_dev* fuse_dev_alloc_install (TYPE_2__*) ;
 int fuse_dev_fiq_ops ;
 int fuse_dev_free (struct fuse_dev*) ;
 int kfree (struct cuse_conn*) ;
 struct cuse_conn* kzalloc (int,int ) ;

__attribute__((used)) static int cuse_channel_open(struct inode *inode, struct file *file)
{
 struct fuse_dev *fud;
 struct cuse_conn *cc;
 int rc;


 cc = kzalloc(sizeof(*cc), GFP_KERNEL);
 if (!cc)
  return -ENOMEM;





 fuse_conn_init(&cc->fc, file->f_cred->user_ns, &fuse_dev_fiq_ops, ((void*)0));

 fud = fuse_dev_alloc_install(&cc->fc);
 if (!fud) {
  kfree(cc);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&cc->list);
 cc->fc.release = cuse_fc_release;

 cc->fc.initialized = 1;
 rc = cuse_send_init(cc);
 if (rc) {
  fuse_dev_free(fud);
  fuse_conn_put(&cc->fc);
  return rc;
 }
 file->private_data = fud;

 return 0;
}
