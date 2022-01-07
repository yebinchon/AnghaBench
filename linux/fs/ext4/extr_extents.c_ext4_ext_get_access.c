
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_ext_path {scalar_t__ p_bh; } ;
typedef int handle_t ;


 int BUFFER_TRACE (scalar_t__,char*) ;
 int ext4_journal_get_write_access (int *,scalar_t__) ;

__attribute__((used)) static int ext4_ext_get_access(handle_t *handle, struct inode *inode,
    struct ext4_ext_path *path)
{
 if (path->p_bh) {

  BUFFER_TRACE(path->p_bh, "get_write_access");
  return ext4_journal_get_write_access(handle, path->p_bh);
 }


 return 0;
}
