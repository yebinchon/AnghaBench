
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {scalar_t__ sc_type; } ;



void nfs4_unhash_stid(struct nfs4_stid *s)
{
 s->sc_type = 0;
}
