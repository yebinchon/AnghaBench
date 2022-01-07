
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct fuse_open_out {int dummy; } ;
struct fuse_open_in {int flags; } ;
struct fuse_conn {int atomic_o_trunc; } ;
struct file {int f_flags; } ;
typedef int inarg ;
struct TYPE_8__ {int opcode; int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int nodeid; } ;
struct TYPE_7__ {int size; struct fuse_open_out* value; } ;
struct TYPE_6__ {int size; struct fuse_open_in* value; } ;


 int FUSE_ARGS (TYPE_3__) ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOCTTY ;
 int O_TRUNC ;
 TYPE_3__ args ;
 int fuse_simple_request (struct fuse_conn*,TYPE_3__*) ;
 int memset (struct fuse_open_in*,int ,int) ;

__attribute__((used)) static int fuse_send_open(struct fuse_conn *fc, u64 nodeid, struct file *file,
     int opcode, struct fuse_open_out *outargp)
{
 struct fuse_open_in inarg;
 FUSE_ARGS(args);

 memset(&inarg, 0, sizeof(inarg));
 inarg.flags = file->f_flags & ~(O_CREAT | O_EXCL | O_NOCTTY);
 if (!fc->atomic_o_trunc)
  inarg.flags &= ~O_TRUNC;
 args.opcode = opcode;
 args.nodeid = nodeid;
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(*outargp);
 args.out_args[0].value = outargp;

 return fuse_simple_request(fc, &args);
}
