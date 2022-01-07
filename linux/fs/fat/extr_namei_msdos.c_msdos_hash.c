
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int hash; int len; int name; } ;
struct fat_mount_options {int dummy; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {struct fat_mount_options options; } ;


 int MSDOS_NAME ;
 TYPE_1__* MSDOS_SB (int ) ;
 int full_name_hash (struct dentry const*,unsigned char*,int) ;
 int msdos_format_name (int ,int ,unsigned char*,struct fat_mount_options*) ;

__attribute__((used)) static int msdos_hash(const struct dentry *dentry, struct qstr *qstr)
{
 struct fat_mount_options *options = &MSDOS_SB(dentry->d_sb)->options;
 unsigned char msdos_name[MSDOS_NAME];
 int error;

 error = msdos_format_name(qstr->name, qstr->len, msdos_name, options);
 if (!error)
  qstr->hash = full_name_hash(dentry, msdos_name, MSDOS_NAME);
 return 0;
}
