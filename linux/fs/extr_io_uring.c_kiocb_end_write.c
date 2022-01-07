
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_kiocb {int flags; int file; } ;
struct inode {int i_sb; } ;


 int REQ_F_ISREG ;
 int SB_FREEZE_WRITE ;
 int __sb_writers_acquired (int ,int ) ;
 int file_end_write (int ) ;
 struct inode* file_inode (int ) ;

__attribute__((used)) static void kiocb_end_write(struct io_kiocb *req)
{




 if (req->flags & REQ_F_ISREG) {
  struct inode *inode = file_inode(req->file);

  __sb_writers_acquired(inode->i_sb, SB_FREEZE_WRITE);
 }
 file_end_write(req->file);
}
