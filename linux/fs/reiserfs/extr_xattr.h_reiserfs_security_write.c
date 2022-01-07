
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int
reiserfs_security_write(struct reiserfs_transaction_handle *th,
   struct inode *inode,
   struct reiserfs_security_handle *sec)
{
 return 0;
}
