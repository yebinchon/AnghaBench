
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct orangefs_object_kref {scalar_t__ fs_id; int khandle; } ;
struct fid {scalar_t__* raw; } ;
struct dentry {int dummy; } ;


 int GOSSIP_SUPER_DEBUG ;
 int ORANGEFS_khandle_from (int *,scalar_t__*,int) ;
 struct dentry* d_obtain_alias (int ) ;
 int gossip_debug (int ,char*,int *,scalar_t__) ;
 int orangefs_iget (struct super_block*,struct orangefs_object_kref*) ;

__attribute__((used)) static struct dentry *orangefs_fh_to_dentry(struct super_block *sb,
      struct fid *fid,
      int fh_len,
      int fh_type)
{
 struct orangefs_object_kref refn;

 if (fh_len < 5 || fh_type > 2)
  return ((void*)0);

 ORANGEFS_khandle_from(&(refn.khandle), fid->raw, 16);
 refn.fs_id = (u32) fid->raw[4];
 gossip_debug(GOSSIP_SUPER_DEBUG,
       "fh_to_dentry: handle %pU, fs_id %d\n",
       &refn.khandle,
       refn.fs_id);

 return d_obtain_alias(orangefs_iget(sb, &refn));
}
