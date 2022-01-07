
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; } ;


 int NFS_INO_ODIRECT ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool nfs_file_io_is_buffered(struct nfs_inode *nfsi)
{
 return test_bit(NFS_INO_ODIRECT, &nfsi->flags) == 0;
}
