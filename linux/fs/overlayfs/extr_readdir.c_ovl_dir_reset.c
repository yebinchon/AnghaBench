
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_dir_file {int is_real; int * cursor; struct ovl_dir_cache* cache; } ;
struct ovl_dir_cache {scalar_t__ version; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;
struct dentry {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int ovl_cache_put (struct ovl_dir_file*,struct dentry*) ;
 scalar_t__ ovl_dentry_version_get (struct dentry*) ;
 int ovl_dir_is_real (struct dentry*) ;

__attribute__((used)) static void ovl_dir_reset(struct file *file)
{
 struct ovl_dir_file *od = file->private_data;
 struct ovl_dir_cache *cache = od->cache;
 struct dentry *dentry = file->f_path.dentry;
 bool is_real;

 if (cache && ovl_dentry_version_get(dentry) != cache->version) {
  ovl_cache_put(od, dentry);
  od->cache = ((void*)0);
  od->cursor = ((void*)0);
 }
 is_real = ovl_dir_is_real(dentry);
 if (od->is_real != is_real) {

  if (WARN_ON(is_real))
   return;
  od->is_real = 0;
 }
}
