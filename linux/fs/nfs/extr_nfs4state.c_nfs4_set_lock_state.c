
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_state {int dummy; } ;
struct nfs4_lock_state {int dummy; } ;
struct TYPE_3__ {struct nfs4_lock_state* owner; } ;
struct TYPE_4__ {TYPE_1__ nfs4_fl; } ;
struct file_lock {int * fl_ops; TYPE_2__ fl_u; int fl_owner; } ;


 int ENOMEM ;
 int nfs4_fl_lock_ops ;
 struct nfs4_lock_state* nfs4_get_lock_state (struct nfs4_state*,int ) ;

int nfs4_set_lock_state(struct nfs4_state *state, struct file_lock *fl)
{
 struct nfs4_lock_state *lsp;

 if (fl->fl_ops != ((void*)0))
  return 0;
 lsp = nfs4_get_lock_state(state, fl->fl_owner);
 if (lsp == ((void*)0))
  return -ENOMEM;
 fl->fl_u.nfs4_fl.owner = lsp;
 fl->fl_ops = &nfs4_fl_lock_ops;
 return 0;
}
