
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_dir_cache {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct ovl_dir_cache* cache; } ;


 TYPE_1__* OVL_I (struct inode*) ;

struct ovl_dir_cache *ovl_dir_cache(struct inode *inode)
{
 return OVL_I(inode)->cache;
}
