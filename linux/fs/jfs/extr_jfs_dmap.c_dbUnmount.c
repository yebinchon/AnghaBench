
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; int i_sb; } ;
struct bmap {int dummy; } ;
struct TYPE_2__ {struct bmap* bmap; } ;


 TYPE_1__* JFS_SBI (int ) ;
 int dbSync (struct inode*) ;
 scalar_t__ isReadOnly (struct inode*) ;
 int kfree (struct bmap*) ;
 int truncate_inode_pages (int ,int ) ;

int dbUnmount(struct inode *ipbmap, int mounterror)
{
 struct bmap *bmp = JFS_SBI(ipbmap->i_sb)->bmap;

 if (!(mounterror || isReadOnly(ipbmap)))
  dbSync(ipbmap);




 truncate_inode_pages(ipbmap->i_mapping, 0);


 kfree(bmp);

 return (0);
}
