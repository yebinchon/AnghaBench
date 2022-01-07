
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFS3_CREATE_EXCLUSIVE ;
 int NFS4_CREATE_EXCLUSIVE4_1 ;

__attribute__((used)) static inline int nfsd_create_is_exclusive(int createmode)
{
 return createmode == NFS3_CREATE_EXCLUSIVE
        || createmode == NFS4_CREATE_EXCLUSIVE4_1;
}
