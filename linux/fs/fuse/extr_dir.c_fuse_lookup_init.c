
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qstr {int name; scalar_t__ len; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct fuse_args {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_4__ {int size; struct fuse_entry_out* value; } ;
struct TYPE_3__ {int value; scalar_t__ size; } ;


 int FUSE_LOOKUP ;
 int memset (struct fuse_entry_out*,int ,int) ;

__attribute__((used)) static void fuse_lookup_init(struct fuse_conn *fc, struct fuse_args *args,
        u64 nodeid, const struct qstr *name,
        struct fuse_entry_out *outarg)
{
 memset(outarg, 0, sizeof(struct fuse_entry_out));
 args->opcode = FUSE_LOOKUP;
 args->nodeid = nodeid;
 args->in_numargs = 1;
 args->in_args[0].size = name->len + 1;
 args->in_args[0].value = name->name;
 args->out_numargs = 1;
 args->out_args[0].size = sizeof(struct fuse_entry_out);
 args->out_args[0].value = outarg;
}
