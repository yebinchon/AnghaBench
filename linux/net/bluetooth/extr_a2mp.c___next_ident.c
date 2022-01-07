
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amp_mgr {scalar_t__ ident; } ;



__attribute__((used)) static u8 __next_ident(struct amp_mgr *mgr)
{
 if (++mgr->ident == 0)
  mgr->ident = 1;

 return mgr->ident;
}
