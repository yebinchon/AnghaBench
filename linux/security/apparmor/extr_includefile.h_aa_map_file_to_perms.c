
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int f_flags; int f_mode; } ;


 int AA_MAY_CREATE ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int MAY_APPEND ;
 int MAY_READ ;
 int MAY_WRITE ;
 int O_APPEND ;
 int O_CREAT ;
 int O_TRUNC ;

__attribute__((used)) static inline u32 aa_map_file_to_perms(struct file *file)
{
 int flags = file->f_flags;
 u32 perms = 0;

 if (file->f_mode & FMODE_WRITE)
  perms |= MAY_WRITE;
 if (file->f_mode & FMODE_READ)
  perms |= MAY_READ;

 if ((flags & O_APPEND) && (perms & MAY_WRITE))
  perms = (perms & ~MAY_WRITE) | MAY_APPEND;

 if (flags & O_TRUNC)
  perms |= MAY_WRITE;
 if (flags & O_CREAT)
  perms |= AA_MAY_CREATE;

 return perms;
}
