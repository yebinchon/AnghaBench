
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_private; } ;


 TYPE_1__* file_inode (struct file*) ;
 int tomoyo_open_control (int const,struct file*) ;

__attribute__((used)) static int tomoyo_open(struct inode *inode, struct file *file)
{
 const int key = ((u8 *) file_inode(file)->i_private)
  - ((u8 *) ((void*)0));
 return tomoyo_open_control(key, file);
}
