
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFS4_READW_LT ;
 int NFS4_READ_LT ;
 int RD_STATE ;
 int WR_STATE ;

__attribute__((used)) static inline int
setlkflg (int type)
{
 return (type == NFS4_READW_LT || type == NFS4_READ_LT) ?
  RD_STATE : WR_STATE;
}
