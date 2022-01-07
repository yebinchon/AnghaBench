
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_2__ i_ctime; TYPE_1__ i_mtime; } ;
struct fuse_setattr_in {int fh; int valid; int ctimensec; int ctime; int mtimensec; int mtime; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int minor; } ;
struct fuse_attr_out {int fh; int valid; int ctimensec; int ctime; int mtimensec; int mtime; } ;
typedef int outarg ;
typedef int inarg ;


 int FATTR_CTIME ;
 int FATTR_FH ;
 int FATTR_MTIME ;
 int FUSE_ARGS (int ) ;
 int args ;
 int fuse_setattr_fill (struct fuse_conn*,int *,struct inode*,struct fuse_setattr_in*,struct fuse_setattr_in*) ;
 int fuse_simple_request (struct fuse_conn*,int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int memset (struct fuse_setattr_in*,int ,int) ;

int fuse_flush_times(struct inode *inode, struct fuse_file *ff)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 FUSE_ARGS(args);
 struct fuse_setattr_in inarg;
 struct fuse_attr_out outarg;

 memset(&inarg, 0, sizeof(inarg));
 memset(&outarg, 0, sizeof(outarg));

 inarg.valid = FATTR_MTIME;
 inarg.mtime = inode->i_mtime.tv_sec;
 inarg.mtimensec = inode->i_mtime.tv_nsec;
 if (fc->minor >= 23) {
  inarg.valid |= FATTR_CTIME;
  inarg.ctime = inode->i_ctime.tv_sec;
  inarg.ctimensec = inode->i_ctime.tv_nsec;
 }
 if (ff) {
  inarg.valid |= FATTR_FH;
  inarg.fh = ff->fh;
 }
 fuse_setattr_fill(fc, &args, inode, &inarg, &outarg);

 return fuse_simple_request(fc, &args);
}
