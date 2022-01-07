
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;


 int FMODE_UNSIGNED_OFFSET ;

__attribute__((used)) static inline bool unsigned_offsets(struct file *file)
{
 return file->f_mode & FMODE_UNSIGNED_OFFSET;
}
