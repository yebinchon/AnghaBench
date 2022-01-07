
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid_t ;
struct qstr {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int jfs_init_security(tid_t tid, struct inode *inode,
        struct inode *dir, const struct qstr *qstr)
{
 return 0;
}
