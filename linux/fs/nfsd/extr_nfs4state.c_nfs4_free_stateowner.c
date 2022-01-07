
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct nfs4_stateowner {TYPE_2__* so_ops; TYPE_1__ so_owner; } ;
struct TYPE_4__ {int (* so_free ) (struct nfs4_stateowner*) ;} ;


 int kfree (int ) ;
 int stub1 (struct nfs4_stateowner*) ;

__attribute__((used)) static inline void nfs4_free_stateowner(struct nfs4_stateowner *sop)
{
 kfree(sop->so_owner.data);
 sop->so_ops->so_free(sop);
}
