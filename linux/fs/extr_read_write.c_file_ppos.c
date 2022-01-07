
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; int f_pos; } ;
typedef int loff_t ;


 int FMODE_STREAM ;

__attribute__((used)) static inline loff_t *file_ppos(struct file *file)
{
 return file->f_mode & FMODE_STREAM ? ((void*)0) : &file->f_pos;
}
