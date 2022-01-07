
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct orangefs_readdir_response_s {int token; } ;
struct TYPE_8__ {int status; scalar_t__ trailer_size; scalar_t__ trailer_buf; } ;
struct TYPE_5__ {int buf_index; int max_dirent_count; int token; int refn; } ;
struct TYPE_6__ {TYPE_1__ readdir; } ;
struct TYPE_7__ {TYPE_2__ req; } ;
struct orangefs_kernel_op_s {int uses_shared_memory; TYPE_4__ downcall; TYPE_3__ upcall; } ;
struct orangefs_inode_s {int refn; } ;
struct orangefs_dir {int error; int token; } ;
struct dentry {int d_inode; } ;


 int EAGAIN ;
 int EIO ;
 int ORANGEFS_MAX_DIRENT_COUNT_READDIR ;
 scalar_t__ PART_SIZE ;
 int get_interruptible_flag (int ) ;
 scalar_t__ op_state_purged (struct orangefs_kernel_op_s*) ;
 int orangefs_readdir_index_get () ;
 int orangefs_readdir_index_put (int) ;
 int service_operation (struct orangefs_kernel_op_s*,char*,int ) ;
 int vfree (scalar_t__) ;

__attribute__((used)) static int do_readdir(struct orangefs_inode_s *oi,
    struct orangefs_dir *od, struct dentry *dentry,
    struct orangefs_kernel_op_s *op)
{
 struct orangefs_readdir_response_s *resp;
 int bufi, r;







 op->uses_shared_memory = 1;
 op->upcall.req.readdir.refn = oi->refn;
 op->upcall.req.readdir.token = od->token;
 op->upcall.req.readdir.max_dirent_count =
     ORANGEFS_MAX_DIRENT_COUNT_READDIR;

again:
 bufi = orangefs_readdir_index_get();
 if (bufi < 0) {
  od->error = bufi;
  return bufi;
 }

 op->upcall.req.readdir.buf_index = bufi;

 r = service_operation(op, "orangefs_readdir",
     get_interruptible_flag(dentry->d_inode));

 orangefs_readdir_index_put(bufi);

 if (op_state_purged(op)) {
  if (r == -EAGAIN) {
   vfree(op->downcall.trailer_buf);
   goto again;
  } else if (r == -EIO) {
   vfree(op->downcall.trailer_buf);
   od->error = r;
   return r;
  }
 }

 if (r < 0) {
  vfree(op->downcall.trailer_buf);
  od->error = r;
  return r;
 } else if (op->downcall.status) {
  vfree(op->downcall.trailer_buf);
  od->error = op->downcall.status;
  return op->downcall.status;
 }





 if (op->downcall.trailer_size > PART_SIZE) {
  vfree(op->downcall.trailer_buf);
  od->error = -EIO;
  return -EIO;
 }

 resp = (struct orangefs_readdir_response_s *)
     op->downcall.trailer_buf;
 od->token = resp->token;
 return 0;
}
