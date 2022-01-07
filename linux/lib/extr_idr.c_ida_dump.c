
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int xa_flags; int xa_head; } ;
struct ida {struct xarray xa; } ;


 int ROOT_TAG_SHIFT ;
 int ida_dump_entry (int ,int ) ;
 int pr_debug (char*,struct ida*,int ,int) ;

__attribute__((used)) static void ida_dump(struct ida *ida)
{
 struct xarray *xa = &ida->xa;
 pr_debug("ida: %p node %p free %d\n", ida, xa->xa_head,
    xa->xa_flags >> ROOT_TAG_SHIFT);
 ida_dump_entry(xa->xa_head, 0);
}
