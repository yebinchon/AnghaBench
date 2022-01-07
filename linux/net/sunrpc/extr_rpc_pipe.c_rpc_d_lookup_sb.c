
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 struct qstr QSTR_INIT (unsigned char const*,int ) ;
 struct dentry* d_hash_and_lookup (int ,struct qstr*) ;
 int strlen (unsigned char const*) ;

struct dentry *rpc_d_lookup_sb(const struct super_block *sb,
          const unsigned char *dir_name)
{
 struct qstr dir = QSTR_INIT(dir_name, strlen(dir_name));
 return d_hash_and_lookup(sb->s_root, &dir);
}
