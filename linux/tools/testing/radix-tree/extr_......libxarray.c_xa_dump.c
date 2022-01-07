
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xarray {int xa_flags; void* xa_head; } ;
struct TYPE_2__ {unsigned int shift; } ;


 unsigned int XA_CHUNK_SHIFT ;
 int XA_MARK_0 ;
 int XA_MARK_1 ;
 int XA_MARK_2 ;
 int pr_info (char*,struct xarray const*,void*,int ,int ,int ,int ) ;
 int xa_dump_entry (void*,int ,unsigned int) ;
 scalar_t__ xa_is_node (void*) ;
 int xa_marked (struct xarray const*,int ) ;
 TYPE_1__* xa_to_node (void*) ;

void xa_dump(const struct xarray *xa)
{
 void *entry = xa->xa_head;
 unsigned int shift = 0;

 pr_info("xarray: %px head %px flags %x marks %d %d %d\n", xa, entry,
   xa->xa_flags, xa_marked(xa, XA_MARK_0),
   xa_marked(xa, XA_MARK_1), xa_marked(xa, XA_MARK_2));
 if (xa_is_node(entry))
  shift = xa_to_node(entry)->shift + XA_CHUNK_SHIFT;
 xa_dump_entry(entry, 0, shift);
}
