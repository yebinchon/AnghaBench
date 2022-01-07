
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct h_misc TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
typedef int uid_t ;
typedef int const u8 ;
struct shash_desc {int dummy; } ;
struct inode {unsigned long i_ino; TYPE_1__* i_sb; int i_mode; int i_gid; int i_uid; int i_generation; } ;
typedef int hmac_misc ;
typedef int gid_t ;
typedef int __u32 ;
struct h_misc {unsigned long ino; int generation; int uid; int gid; int mode; } ;
struct TYPE_3__ {int s_uuid; } ;


 int EVM_ATTR_FSUUID ;
 char EVM_XATTR_PORTABLE_DIGSIG ;
 int UUID_SIZE ;
 int crypto_shash_final (struct shash_desc*,char*) ;
 int crypto_shash_update (struct shash_desc*,int const*,int) ;
 int evm_hmac_attrs ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void hmac_add_misc(struct shash_desc *desc, struct inode *inode,
     char type, char *digest)
{
 struct h_misc {
  unsigned long ino;
  __u32 generation;
  uid_t uid;
  gid_t gid;
  umode_t mode;
 } hmac_misc;

 memset(&hmac_misc, 0, sizeof(hmac_misc));



 if (type != EVM_XATTR_PORTABLE_DIGSIG) {
  hmac_misc.ino = inode->i_ino;
  hmac_misc.generation = inode->i_generation;
 }
 hmac_misc.uid = from_kuid(&init_user_ns, inode->i_uid);
 hmac_misc.gid = from_kgid(&init_user_ns, inode->i_gid);
 hmac_misc.mode = inode->i_mode;
 crypto_shash_update(desc, (const u8 *)&hmac_misc, sizeof(hmac_misc));
 if ((evm_hmac_attrs & EVM_ATTR_FSUUID) &&
     type != EVM_XATTR_PORTABLE_DIGSIG)
  crypto_shash_update(desc, (u8 *)&inode->i_sb->s_uuid, UUID_SIZE);
 crypto_shash_final(desc, digest);
}
