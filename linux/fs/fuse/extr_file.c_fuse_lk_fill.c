
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int pid; int type; int end; int start; } ;
struct fuse_lk_in {int lk_flags; TYPE_1__ lk; int owner; int fh; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int dummy; } ;
struct fuse_args {int opcode; int in_numargs; TYPE_2__* in_args; int nodeid; } ;
struct file_lock {int fl_type; int fl_end; int fl_start; int fl_owner; } ;
struct file {struct fuse_file* private_data; } ;
typedef int pid_t ;
struct TYPE_4__ {int size; struct fuse_lk_in* value; } ;


 int FUSE_LK_FLOCK ;
 struct inode* file_inode (struct file*) ;
 int fuse_lock_owner_id (struct fuse_conn*,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int memset (struct fuse_lk_in*,int ,int) ;

__attribute__((used)) static void fuse_lk_fill(struct fuse_args *args, struct file *file,
    const struct file_lock *fl, int opcode, pid_t pid,
    int flock, struct fuse_lk_in *inarg)
{
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_file *ff = file->private_data;

 memset(inarg, 0, sizeof(*inarg));
 inarg->fh = ff->fh;
 inarg->owner = fuse_lock_owner_id(fc, fl->fl_owner);
 inarg->lk.start = fl->fl_start;
 inarg->lk.end = fl->fl_end;
 inarg->lk.type = fl->fl_type;
 inarg->lk.pid = pid;
 if (flock)
  inarg->lk_flags |= FUSE_LK_FLOCK;
 args->opcode = opcode;
 args->nodeid = get_node_id(inode);
 args->in_numargs = 1;
 args->in_args[0].size = sizeof(*inarg);
 args->in_args[0].value = inarg;
}
