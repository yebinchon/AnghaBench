
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* external; } ;
struct fnode {TYPE_2__ u; } ;
struct buffer_head {int dummy; } ;
typedef int ino_t ;
typedef int dnode_secno ;
struct TYPE_3__ {int disk_secno; } ;


 int brelse (struct buffer_head*) ;
 struct fnode* hpfs_map_fnode (struct super_block*,int ,struct buffer_head**) ;
 int le32_to_cpu (int ) ;

dnode_secno hpfs_fnode_dno(struct super_block *s, ino_t ino)
{
 struct buffer_head *bh;
 struct fnode *fnode;
 dnode_secno dno;

 fnode = hpfs_map_fnode(s, ino, &bh);
 if (!fnode)
  return 0;

 dno = le32_to_cpu(fnode->u.external[0].disk_secno);
 brelse(bh);
 return dno;
}
