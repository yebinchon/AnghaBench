
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int dummy; } ;
struct ubifs_info {int dummy; } ;


 int ubifs_dump_znode (struct ubifs_info*,struct ubifs_znode*) ;

__attribute__((used)) static int dump_znode(struct ubifs_info *c, struct ubifs_znode *znode,
        void *priv)
{
 ubifs_dump_znode(c, znode);
 return 0;
}
