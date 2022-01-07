
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int dummy; } ;


 scalar_t__ nfs_file_has_writers (struct nfs_inode*) ;
 scalar_t__ nfs_file_io_is_buffered (struct nfs_inode*) ;

__attribute__((used)) static bool nfs_file_has_buffered_writers(struct nfs_inode *nfsi)
{
 return nfs_file_has_writers(nfsi) && nfs_file_io_is_buffered(nfsi);
}
