
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;


 int LIST_HEAD (int ) ;
 int NFSD_FILE_HASH_BITS ;
 int __nfsd_file_close_inode (struct inode*,unsigned int,int *) ;
 int dispose ;
 scalar_t__ hash_long (int ,int ) ;
 int list_empty (int *) ;
 int nfsd_file_dispose_list (int *) ;
 int trace_nfsd_file_close_inode (struct inode*,unsigned int,int) ;

__attribute__((used)) static void
nfsd_file_close_inode(struct inode *inode)
{
 unsigned int hashval = (unsigned int)hash_long(inode->i_ino,
      NFSD_FILE_HASH_BITS);
 LIST_HEAD(dispose);

 __nfsd_file_close_inode(inode, hashval, &dispose);
 trace_nfsd_file_close_inode(inode, hashval, !list_empty(&dispose));
 nfsd_file_dispose_list(&dispose);
}
