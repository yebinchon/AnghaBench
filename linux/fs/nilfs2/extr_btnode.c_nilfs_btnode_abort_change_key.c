
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; TYPE_1__* bh; struct buffer_head* newbh; } ;
struct buffer_head {int dummy; } ;
struct address_space {int i_pages; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int b_page; } ;


 int brelse (struct buffer_head*) ;
 int unlock_page (int ) ;
 int xa_erase_irq (int *,scalar_t__) ;

void nilfs_btnode_abort_change_key(struct address_space *btnc,
       struct nilfs_btnode_chkey_ctxt *ctxt)
{
 struct buffer_head *nbh = ctxt->newbh;
 __u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;

 if (oldkey == newkey)
  return;

 if (nbh == ((void*)0)) {
  xa_erase_irq(&btnc->i_pages, newkey);
  unlock_page(ctxt->bh->b_page);
 } else
  brelse(nbh);
}
