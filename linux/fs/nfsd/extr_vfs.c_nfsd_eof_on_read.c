
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;


 int file_inode (struct file*) ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static u32 nfsd_eof_on_read(struct file *file, loff_t offset, ssize_t len,
  size_t expected)
{
 if (expected != 0 && len == 0)
  return 1;
 if (offset+len >= i_size_read(file_inode(file)))
  return 1;
 return 0;
}
