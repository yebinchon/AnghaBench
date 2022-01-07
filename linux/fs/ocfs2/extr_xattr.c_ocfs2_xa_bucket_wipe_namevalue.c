
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {int xl_entry; TYPE_1__* xl_header; } ;
struct TYPE_2__ {int xh_name_value_len; } ;


 int le16_add_cpu (int *,int ) ;
 int namevalue_size_xe (int ) ;

__attribute__((used)) static void ocfs2_xa_bucket_wipe_namevalue(struct ocfs2_xa_loc *loc)
{
 le16_add_cpu(&loc->xl_header->xh_name_value_len,
       -namevalue_size_xe(loc->xl_entry));
}
