
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;




 int NFS4_CDFC4_BOTH ;


 int nfs_ok ;
 int nfserr_inval ;

__attribute__((used)) static __be32 nfsd4_map_bcts_dir(u32 *dir)
{
 switch (*dir) {
 case 129:
 case 131:
  return nfs_ok;
 case 128:
 case 130:
  *dir = NFS4_CDFC4_BOTH;
  return nfs_ok;
 };
 return nfserr_inval;
}
