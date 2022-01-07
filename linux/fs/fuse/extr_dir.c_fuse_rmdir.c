
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_7__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_8__ {int in_numargs; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_6__ {int value; scalar_t__ size; } ;


 int EINTR ;
 int FUSE_ARGS (TYPE_3__) ;
 int FUSE_RMDIR ;
 TYPE_3__ args ;
 int clear_nlink (int ) ;
 int d_inode (struct dentry*) ;
 int fuse_dir_changed (struct inode*) ;
 int fuse_invalidate_entry (struct dentry*) ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_3__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;

__attribute__((used)) static int fuse_rmdir(struct inode *dir, struct dentry *entry)
{
 int err;
 struct fuse_conn *fc = get_fuse_conn(dir);
 FUSE_ARGS(args);

 args.opcode = FUSE_RMDIR;
 args.nodeid = get_node_id(dir);
 args.in_numargs = 1;
 args.in_args[0].size = entry->d_name.len + 1;
 args.in_args[0].value = entry->d_name.name;
 err = fuse_simple_request(fc, &args);
 if (!err) {
  clear_nlink(d_inode(entry));
  fuse_dir_changed(dir);
  fuse_invalidate_entry_cache(entry);
 } else if (err == -EINTR)
  fuse_invalidate_entry(entry);
 return err;
}
