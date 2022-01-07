
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int xe_name_offset; } ;


 int cpu_to_le16 (int) ;
 int ocfs2_xa_get_free_start (struct ocfs2_xa_loc*) ;

__attribute__((used)) static void ocfs2_xa_block_add_namevalue(struct ocfs2_xa_loc *loc, int size)
{
 int free_start = ocfs2_xa_get_free_start(loc);

 loc->xl_entry->xe_name_offset = cpu_to_le16(free_start - size);
}
