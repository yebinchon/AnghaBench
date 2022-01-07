
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_fsnotify_marks; } ;



__attribute__((used)) static unsigned long inode_to_key(const struct inode *inode)
{

 return (unsigned long)&inode->i_fsnotify_marks;
}
