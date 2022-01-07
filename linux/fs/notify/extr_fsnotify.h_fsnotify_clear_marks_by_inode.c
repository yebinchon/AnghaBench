
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_fsnotify_marks; } ;


 int fsnotify_destroy_marks (int *) ;

__attribute__((used)) static inline void fsnotify_clear_marks_by_inode(struct inode *inode)
{
 fsnotify_destroy_marks(&inode->i_fsnotify_marks);
}
