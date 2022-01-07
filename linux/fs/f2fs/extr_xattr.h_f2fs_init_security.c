
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int f2fs_init_security(struct inode *inode, struct inode *dir,
    const struct qstr *qstr, struct page *ipage)
{
 return 0;
}
