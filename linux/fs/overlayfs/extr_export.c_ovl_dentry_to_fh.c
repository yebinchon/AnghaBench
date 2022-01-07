
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int dummy; } ;


 int FILEID_INVALID ;
 int OVL_FILEID ;
 int ovl_d_to_fh (struct dentry*,char*,int) ;

__attribute__((used)) static int ovl_dentry_to_fh(struct dentry *dentry, u32 *fid, int *max_len)
{
 int res, len = *max_len << 2;

 res = ovl_d_to_fh(dentry, (char *)fid, len);
 if (res <= 0)
  return FILEID_INVALID;

 len = res;


 *max_len = (len + 3) >> 2;
 return OVL_FILEID;
}
