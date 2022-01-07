
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int create_time; } ;
struct nfs4_state_owner {TYPE_1__ so_seqid; } ;


 int ktime_get () ;

__attribute__((used)) static void
nfs4_reset_state_owner(struct nfs4_state_owner *sp)
{
 sp->so_seqid.create_time = ktime_get();
}
