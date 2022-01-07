
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
struct qstr {scalar_t__ len; } ;
struct inode {int dummy; } ;
struct fuse_forget_link {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct fuse_entry_out {int nodeid; TYPE_1__ attr; int generation; } ;
struct fuse_conn {int dummy; } ;


 int EIO ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int FUSE_ARGS (int ) ;
 scalar_t__ FUSE_NAME_MAX ;
 int args ;
 int entry_attr_timeout (struct fuse_entry_out*) ;
 struct fuse_forget_link* fuse_alloc_forget () ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 struct inode* fuse_iget (struct super_block*,int ,int ,TYPE_1__*,int ,int ) ;
 int fuse_lookup_init (struct fuse_conn*,int *,int ,struct qstr const*,struct fuse_entry_out*) ;
 int fuse_queue_forget (struct fuse_conn*,struct fuse_forget_link*,int ,int) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;
 int fuse_valid_type (int ) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int kfree (struct fuse_forget_link*) ;

int fuse_lookup_name(struct super_block *sb, u64 nodeid, const struct qstr *name,
       struct fuse_entry_out *outarg, struct inode **inode)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 FUSE_ARGS(args);
 struct fuse_forget_link *forget;
 u64 attr_version;
 int err;

 *inode = ((void*)0);
 err = -ENAMETOOLONG;
 if (name->len > FUSE_NAME_MAX)
  goto out;


 forget = fuse_alloc_forget();
 err = -ENOMEM;
 if (!forget)
  goto out;

 attr_version = fuse_get_attr_version(fc);

 fuse_lookup_init(fc, &args, nodeid, name, outarg);
 err = fuse_simple_request(fc, &args);

 if (err || !outarg->nodeid)
  goto out_put_forget;

 err = -EIO;
 if (!outarg->nodeid)
  goto out_put_forget;
 if (!fuse_valid_type(outarg->attr.mode))
  goto out_put_forget;

 *inode = fuse_iget(sb, outarg->nodeid, outarg->generation,
      &outarg->attr, entry_attr_timeout(outarg),
      attr_version);
 err = -ENOMEM;
 if (!*inode) {
  fuse_queue_forget(fc, forget, outarg->nodeid, 1);
  goto out;
 }
 err = 0;

 out_put_forget:
 kfree(forget);
 out:
 return err;
}
