
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int BPERDMAP ;
 int L2BPERDMAP ;
 int L2MAXAG ;
 int MAXAG ;

__attribute__((used)) static int dbGetL2AGSize(s64 nblocks)
{
 s64 sz;
 s64 m;
 int l2sz;

 if (nblocks < BPERDMAP * MAXAG)
  return (L2BPERDMAP);


 m = ((u64) 1 << (64 - 1));
 for (l2sz = 64; l2sz >= 0; l2sz--, m >>= 1) {
  if (m & nblocks)
   break;
 }

 sz = (s64) 1 << l2sz;
 if (sz < nblocks)
  l2sz += 1;


 return (l2sz - L2MAXAG);
}
