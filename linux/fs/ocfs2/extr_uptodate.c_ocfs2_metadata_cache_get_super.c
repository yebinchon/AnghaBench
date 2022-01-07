
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_caching_info {TYPE_1__* ci_ops; } ;
struct TYPE_2__ {struct super_block* (* co_get_super ) (struct ocfs2_caching_info*) ;} ;


 int BUG_ON (int) ;
 struct super_block* stub1 (struct ocfs2_caching_info*) ;

struct super_block *ocfs2_metadata_cache_get_super(struct ocfs2_caching_info *ci)
{
 BUG_ON(!ci || !ci->ci_ops);

 return ci->ci_ops->co_get_super(ci);
}
