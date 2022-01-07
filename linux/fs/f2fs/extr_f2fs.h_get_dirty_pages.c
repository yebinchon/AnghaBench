
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int dirty_pages; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int atomic_read (int *) ;

__attribute__((used)) static inline int get_dirty_pages(struct inode *inode)
{
 return atomic_read(&F2FS_I(inode)->dirty_pages);
}
