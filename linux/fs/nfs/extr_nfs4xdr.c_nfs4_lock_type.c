
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_type; } ;


 scalar_t__ F_RDLCK ;
 int NFS4_READW_LT ;
 int NFS4_READ_LT ;
 int NFS4_WRITEW_LT ;
 int NFS4_WRITE_LT ;

__attribute__((used)) static inline int nfs4_lock_type(struct file_lock *fl, int block)
{
 if (fl->fl_type == F_RDLCK)
  return block ? NFS4_READW_LT : NFS4_READ_LT;
 return block ? NFS4_WRITEW_LT : NFS4_WRITE_LT;
}
