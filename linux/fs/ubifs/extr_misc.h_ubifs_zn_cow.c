
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int flags; } ;


 int COW_ZNODE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int ubifs_zn_cow(const struct ubifs_znode *znode)
{
 return !!test_bit(COW_ZNODE, &znode->flags);
}
