
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int creator_cred; } ;
struct cred {int dummy; } ;


 struct cred const* override_creds (int ) ;

const struct cred *ovl_override_creds(struct super_block *sb)
{
 struct ovl_fs *ofs = sb->s_fs_info;

 return override_creds(ofs->creator_cred);
}
