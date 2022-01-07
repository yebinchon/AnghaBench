
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_mgr {int ctrl_blk; struct hw* hw; } ;
struct srcimp_mgr {struct rsc_mgr mgr; } ;
struct imapper {int addr; int next; int user; int slot; } ;
struct hw {int (* srcimp_mgr_commit_write ) (struct hw*,int ) ;int (* srcimp_mgr_set_imapaddr ) (int ,int ) ;int (* srcimp_mgr_set_imapnxt ) (int ,int ) ;int (* srcimp_mgr_set_imapuser ) (int ,int ) ;int (* srcimp_mgr_set_imaparc ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (struct hw*,int ) ;

__attribute__((used)) static int srcimp_map_op(void *data, struct imapper *entry)
{
 struct rsc_mgr *mgr = &((struct srcimp_mgr *)data)->mgr;
 struct hw *hw = mgr->hw;

 hw->srcimp_mgr_set_imaparc(mgr->ctrl_blk, entry->slot);
 hw->srcimp_mgr_set_imapuser(mgr->ctrl_blk, entry->user);
 hw->srcimp_mgr_set_imapnxt(mgr->ctrl_blk, entry->next);
 hw->srcimp_mgr_set_imapaddr(mgr->ctrl_blk, entry->addr);
 hw->srcimp_mgr_commit_write(mgr->hw, mgr->ctrl_blk);

 return 0;
}
