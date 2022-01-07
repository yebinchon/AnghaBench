
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_security_handle {int dummy; } ;
struct qstr {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int reiserfs_security_init(struct inode *dir,
      struct inode *inode,
      const struct qstr *qstr,
      struct reiserfs_security_handle *sec)
{
 return 0;
}
