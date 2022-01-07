
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int flags; } ;


 int OBSOLETE_ZNODE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int ubifs_zn_obsolete(const struct ubifs_znode *znode)
{
 return !!test_bit(OBSOLETE_ZNODE, &znode->flags);
}
