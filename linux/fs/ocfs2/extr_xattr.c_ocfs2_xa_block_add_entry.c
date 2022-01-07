
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xa_loc {int * xl_entry; TYPE_1__* xl_header; } ;
struct TYPE_2__ {int xh_count; int * xh_entries; } ;


 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ocfs2_xa_block_add_entry(struct ocfs2_xa_loc *loc, u32 name_hash)
{
 int count = le16_to_cpu(loc->xl_header->xh_count);
 loc->xl_entry = &(loc->xl_header->xh_entries[count]);
 le16_add_cpu(&loc->xl_header->xh_count, 1);
 memset(loc->xl_entry, 0, sizeof(struct ocfs2_xattr_entry));
}
