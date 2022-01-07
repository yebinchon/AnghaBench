
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int so_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct nfs4_stateowner *
nfs4_get_stateowner(struct nfs4_stateowner *sop)
{
 atomic_inc(&sop->so_count);
 return sop;
}
