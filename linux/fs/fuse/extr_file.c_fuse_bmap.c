
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fuse_conn {int no_bmap; } ;
struct fuse_bmap_out {int block; } ;
struct fuse_bmap_in {int blocksize; int block; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;
typedef int outarg ;
typedef int inarg ;
struct TYPE_10__ {int in_numargs; int out_numargs; TYPE_3__* out_args; TYPE_2__* in_args; int nodeid; int opcode; } ;
struct TYPE_9__ {int size; struct fuse_bmap_out* value; } ;
struct TYPE_8__ {int size; struct fuse_bmap_in* value; } ;
struct TYPE_7__ {int s_blocksize; int s_bdev; } ;


 int ENOSYS ;
 int FUSE_ARGS (TYPE_4__) ;
 int FUSE_BMAP ;
 TYPE_4__ args ;
 int fuse_simple_request (struct fuse_conn*,TYPE_4__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int memset (struct fuse_bmap_in*,int ,int) ;

__attribute__((used)) static sector_t fuse_bmap(struct address_space *mapping, sector_t block)
{
 struct inode *inode = mapping->host;
 struct fuse_conn *fc = get_fuse_conn(inode);
 FUSE_ARGS(args);
 struct fuse_bmap_in inarg;
 struct fuse_bmap_out outarg;
 int err;

 if (!inode->i_sb->s_bdev || fc->no_bmap)
  return 0;

 memset(&inarg, 0, sizeof(inarg));
 inarg.block = block;
 inarg.blocksize = inode->i_sb->s_blocksize;
 args.opcode = FUSE_BMAP;
 args.nodeid = get_node_id(inode);
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(outarg);
 args.out_args[0].value = &outarg;
 err = fuse_simple_request(fc, &args);
 if (err == -ENOSYS)
  fc->no_bmap = 1;

 return err ? 0 : outarg.block;
}
