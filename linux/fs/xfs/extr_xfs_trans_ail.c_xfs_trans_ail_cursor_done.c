
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ail_cursor {int list; int * item; } ;


 int list_del_init (int *) ;

void
xfs_trans_ail_cursor_done(
 struct xfs_ail_cursor *cur)
{
 cur->item = ((void*)0);
 list_del_init(&cur->list);
}
