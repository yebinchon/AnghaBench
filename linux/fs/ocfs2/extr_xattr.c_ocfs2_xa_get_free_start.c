
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {TYPE_1__* xl_ops; } ;
struct TYPE_2__ {int (* xlo_get_free_start ) (struct ocfs2_xa_loc*) ;} ;


 int stub1 (struct ocfs2_xa_loc*) ;

__attribute__((used)) static int ocfs2_xa_get_free_start(struct ocfs2_xa_loc *loc)
{
 return loc->xl_ops->xlo_get_free_start(loc);
}
