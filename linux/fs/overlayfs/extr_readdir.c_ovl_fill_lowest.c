
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ovl_readdir_data {int err; int middle; int root; } ;
struct ovl_cache_entry {int l_node; } ;
typedef int loff_t ;


 int ENOMEM ;
 int list_add_tail (int *,int *) ;
 int list_move_tail (int *,int *) ;
 struct ovl_cache_entry* ovl_cache_entry_find (int ,char const*,int) ;
 struct ovl_cache_entry* ovl_cache_entry_new (struct ovl_readdir_data*,char const*,int,int ,unsigned int) ;

__attribute__((used)) static int ovl_fill_lowest(struct ovl_readdir_data *rdd,
      const char *name, int namelen,
      loff_t offset, u64 ino, unsigned int d_type)
{
 struct ovl_cache_entry *p;

 p = ovl_cache_entry_find(rdd->root, name, namelen);
 if (p) {
  list_move_tail(&p->l_node, &rdd->middle);
 } else {
  p = ovl_cache_entry_new(rdd, name, namelen, ino, d_type);
  if (p == ((void*)0))
   rdd->err = -ENOMEM;
  else
   list_add_tail(&p->l_node, &rdd->middle);
 }

 return rdd->err;
}
