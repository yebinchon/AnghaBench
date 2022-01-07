
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int nilfs_mdt_get_block (struct inode*,int ,int ,int *,struct buffer_head**) ;

__attribute__((used)) static inline int nilfs_cpfile_get_header_block(struct inode *cpfile,
      struct buffer_head **bhp)
{
 return nilfs_mdt_get_block(cpfile, 0, 0, ((void*)0), bhp);
}
