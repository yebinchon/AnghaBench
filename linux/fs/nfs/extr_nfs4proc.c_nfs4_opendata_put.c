
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_opendata {int kref; } ;


 int kref_put (int *,int ) ;
 int nfs4_opendata_free ;

__attribute__((used)) static void nfs4_opendata_put(struct nfs4_opendata *p)
{
 if (p != ((void*)0))
  kref_put(&p->kref, nfs4_opendata_free);
}
