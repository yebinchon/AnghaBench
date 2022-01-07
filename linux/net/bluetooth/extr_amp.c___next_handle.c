
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amp_mgr {scalar_t__ handle; } ;



__attribute__((used)) static u8 __next_handle(struct amp_mgr *mgr)
{
 if (++mgr->handle == 0)
  mgr->handle = 1;

 return mgr->handle;
}
