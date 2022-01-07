
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ NFS4_SHARE_ACCESS_READ ;
 int RD_STATE ;
 int WR_STATE ;

__attribute__((used)) static int share_access_to_flags(u32 share_access)
{
 return share_access == NFS4_SHARE_ACCESS_READ ? RD_STATE : WR_STATE;
}
