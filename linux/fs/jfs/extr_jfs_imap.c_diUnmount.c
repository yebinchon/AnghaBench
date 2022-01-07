
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inomap {int dummy; } ;
struct inode {int i_mapping; } ;
struct TYPE_2__ {struct inomap* i_imap; } ;


 TYPE_1__* JFS_IP (struct inode*) ;
 int diSync (struct inode*) ;
 scalar_t__ isReadOnly (struct inode*) ;
 int kfree (struct inomap*) ;
 int truncate_inode_pages (int ,int ) ;

int diUnmount(struct inode *ipimap, int mounterror)
{
 struct inomap *imap = JFS_IP(ipimap)->i_imap;





 if (!(mounterror || isReadOnly(ipimap)))
  diSync(ipimap);




 truncate_inode_pages(ipimap->i_mapping, 0);




 kfree(imap);

 return (0);
}
