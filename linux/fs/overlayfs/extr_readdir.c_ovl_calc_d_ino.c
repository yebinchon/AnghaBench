
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_readdir_data {TYPE_1__* dentry; int is_upper; } ;
struct ovl_cache_entry {char* name; int len; } ;
struct TYPE_2__ {int d_sb; } ;


 int OVL_IMPURE ;
 int d_inode (TYPE_1__*) ;
 scalar_t__ ovl_test_flag (int ,int ) ;
 scalar_t__ ovl_xino_bits (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool ovl_calc_d_ino(struct ovl_readdir_data *rdd,
      struct ovl_cache_entry *p)
{

 if (!rdd->dentry)
  return 0;


 if (ovl_xino_bits(rdd->dentry->d_sb))
  return 1;


 if (strcmp(p->name, "..") == 0)
  return 1;


 if (!rdd->is_upper)
  return 0;





 if ((p->name[0] == '.' && p->len == 1) ||
     ovl_test_flag(OVL_IMPURE, d_inode(rdd->dentry)))
  return 1;

 return 0;
}
