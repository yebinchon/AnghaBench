
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_atime; int i_mode; int i_gid; int i_uid; } ;


 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;

__attribute__((used)) static inline void ovl_copyattr(struct inode *from, struct inode *to)
{
 to->i_uid = from->i_uid;
 to->i_gid = from->i_gid;
 to->i_mode = from->i_mode;
 to->i_atime = from->i_atime;
 to->i_mtime = from->i_mtime;
 to->i_ctime = from->i_ctime;
 i_size_write(to, i_size_read(from));
}
