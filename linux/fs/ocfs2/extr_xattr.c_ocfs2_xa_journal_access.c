
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {TYPE_1__* xl_ops; } ;
typedef int handle_t ;
struct TYPE_2__ {int (* xlo_journal_access ) (int *,struct ocfs2_xa_loc*,int) ;} ;


 int stub1 (int *,struct ocfs2_xa_loc*,int) ;

__attribute__((used)) static int ocfs2_xa_journal_access(handle_t *handle, struct ocfs2_xa_loc *loc,
       int type)
{
 return loc->xl_ops->xlo_journal_access(handle, loc, type);
}
