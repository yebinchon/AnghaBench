
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_fsync_in {int fsync_flags; int fh; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
typedef int inarg ;
struct TYPE_8__ {int opcode; int in_numargs; TYPE_2__* in_args; int nodeid; } ;
struct TYPE_7__ {int size; struct fuse_fsync_in* value; } ;
struct TYPE_6__ {struct inode* host; } ;


 int FUSE_ARGS (TYPE_3__) ;
 int FUSE_FSYNC_FDATASYNC ;
 TYPE_3__ args ;
 int fuse_simple_request (struct fuse_conn*,TYPE_3__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int memset (struct fuse_fsync_in*,int ,int) ;

int fuse_fsync_common(struct file *file, loff_t start, loff_t end,
        int datasync, int opcode)
{
 struct inode *inode = file->f_mapping->host;
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_file *ff = file->private_data;
 FUSE_ARGS(args);
 struct fuse_fsync_in inarg;

 memset(&inarg, 0, sizeof(inarg));
 inarg.fh = ff->fh;
 inarg.fsync_flags = datasync ? FUSE_FSYNC_FDATASYNC : 0;
 args.opcode = opcode;
 args.nodeid = get_node_id(inode);
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 return fuse_simple_request(fc, &args);
}
