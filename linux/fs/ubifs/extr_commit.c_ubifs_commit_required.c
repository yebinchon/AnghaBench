
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int cmt_state; int cs_lock; } ;
 int dbg_cmt (char*,int ,int ) ;
 int dbg_cstate (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ubifs_commit_required(struct ubifs_info *c)
{
 spin_lock(&c->cs_lock);
 switch (c->cmt_state) {
 case 130:
 case 133:
  dbg_cmt("old: %s, new: %s", dbg_cstate(c->cmt_state),
   dbg_cstate(131));
  c->cmt_state = 131;
  break;
 case 129:
  dbg_cmt("old: %s, new: %s", dbg_cstate(c->cmt_state),
   dbg_cstate(128));
  c->cmt_state = 128;
  break;
 case 131:
 case 128:
 case 132:
  break;
 }
 spin_unlock(&c->cs_lock);
}
