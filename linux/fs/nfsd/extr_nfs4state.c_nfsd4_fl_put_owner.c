
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_lockowner {int lo_owner; } ;
typedef scalar_t__ fl_owner_t ;


 int nfs4_put_stateowner (int *) ;

__attribute__((used)) static void
nfsd4_fl_put_owner(fl_owner_t owner)
{
 struct nfs4_lockowner *lo = (struct nfs4_lockowner *)owner;

 if (lo)
  nfs4_put_stateowner(&lo->lo_owner);
}
