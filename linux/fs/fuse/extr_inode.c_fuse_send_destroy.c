
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fuse_conn {scalar_t__ conn_init; } ;
struct TYPE_4__ {int force; int nocreds; int opcode; } ;


 int FUSE_ARGS (TYPE_1__) ;
 int FUSE_DESTROY ;
 TYPE_1__ args ;
 int fuse_simple_request (struct fuse_conn*,TYPE_1__*) ;

__attribute__((used)) static void fuse_send_destroy(struct fuse_conn *fc)
{
 if (fc->conn_init) {
  FUSE_ARGS(args);

  args.opcode = FUSE_DESTROY;
  args.force = 1;
  args.nocreds = 1;
  fuse_simple_request(fc, &args);
 }
}
