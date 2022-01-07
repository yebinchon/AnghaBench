
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orangefs_object_kref {char fs_id; int khandle; } ;
struct inode {int dummy; } ;
typedef char __u32 ;
struct TYPE_2__ {struct orangefs_object_kref refn; } ;


 int GOSSIP_SUPER_DEBUG ;
 TYPE_1__* ORANGEFS_I (struct inode*) ;
 int ORANGEFS_khandle_to (int *,char*,int) ;
 int gossip_debug (int ,char*,int *,char) ;
 int gossip_err (char*) ;

__attribute__((used)) static int orangefs_encode_fh(struct inode *inode,
      __u32 *fh,
      int *max_len,
      struct inode *parent)
{
 int len = parent ? 10 : 5;
 int type = 1;
 struct orangefs_object_kref refn;

 if (*max_len < len) {
  gossip_err("fh buffer is too small for encoding\n");
  *max_len = len;
  type = 255;
  goto out;
 }

 refn = ORANGEFS_I(inode)->refn;
 ORANGEFS_khandle_to(&refn.khandle, fh, 16);
 fh[4] = refn.fs_id;

 gossip_debug(GOSSIP_SUPER_DEBUG,
       "Encoding fh: handle %pU, fsid %u\n",
       &refn.khandle,
       refn.fs_id);


 if (parent) {
  refn = ORANGEFS_I(parent)->refn;
  ORANGEFS_khandle_to(&refn.khandle, (char *) fh + 20, 16);
  fh[9] = refn.fs_id;

  type = 2;
  gossip_debug(GOSSIP_SUPER_DEBUG,
        "Encoding parent: handle %pU, fsid %u\n",
        &refn.khandle,
        refn.fs_id);
 }
 *max_len = len;

out:
 return type;
}
