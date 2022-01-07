
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fuse_poll_out {int revents; } ;
struct fuse_poll_in {int flags; int events; int kh; int fh; } ;
struct fuse_file {int nodeid; int poll_wait; int kh; int fh; struct fuse_conn* fc; } ;
struct fuse_conn {int no_poll; } ;
struct file {struct fuse_file* private_data; } ;
typedef int poll_table ;
typedef int outarg ;
typedef int inarg ;
typedef int __poll_t ;
struct TYPE_8__ {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_7__ {int size; struct fuse_poll_out* value; } ;
struct TYPE_6__ {int size; struct fuse_poll_in* value; } ;


 int DEFAULT_POLLMASK ;
 int ENOSYS ;
 int EPOLLERR ;
 int FUSE_ARGS (TYPE_3__) ;
 int FUSE_POLL ;
 int FUSE_POLL_SCHEDULE_NOTIFY ;
 TYPE_3__ args ;
 int demangle_poll (int ) ;
 int fuse_register_polled_file (struct fuse_conn*,struct fuse_file*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_3__*) ;
 int mangle_poll (int ) ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ waitqueue_active (int *) ;

__poll_t fuse_file_poll(struct file *file, poll_table *wait)
{
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 struct fuse_poll_in inarg = { .fh = ff->fh, .kh = ff->kh };
 struct fuse_poll_out outarg;
 FUSE_ARGS(args);
 int err;

 if (fc->no_poll)
  return DEFAULT_POLLMASK;

 poll_wait(file, &ff->poll_wait, wait);
 inarg.events = mangle_poll(poll_requested_events(wait));





 if (waitqueue_active(&ff->poll_wait)) {
  inarg.flags |= FUSE_POLL_SCHEDULE_NOTIFY;
  fuse_register_polled_file(fc, ff);
 }

 args.opcode = FUSE_POLL;
 args.nodeid = ff->nodeid;
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(outarg);
 args.out_args[0].value = &outarg;
 err = fuse_simple_request(fc, &args);

 if (!err)
  return demangle_poll(outarg.revents);
 if (err == -ENOSYS) {
  fc->no_poll = 1;
  return DEFAULT_POLLMASK;
 }
 return EPOLLERR;
}
