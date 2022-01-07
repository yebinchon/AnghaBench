
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {scalar_t__ cp_task; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int FS_CP_DATA_IO ;
 int FS_DATA_IO ;
 int __f2fs_write_data_pages (struct address_space*,struct writeback_control*,int ) ;
 scalar_t__ current ;

__attribute__((used)) static int f2fs_write_data_pages(struct address_space *mapping,
       struct writeback_control *wbc)
{
 struct inode *inode = mapping->host;

 return __f2fs_write_data_pages(mapping, wbc,
   F2FS_I(inode)->cp_task == current ?
   FS_CP_DATA_IO : FS_DATA_IO);
}
