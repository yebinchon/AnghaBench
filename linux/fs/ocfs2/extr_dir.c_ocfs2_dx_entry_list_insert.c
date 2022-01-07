
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_dx_hinfo {int minor_hash; int major_hash; } ;
struct ocfs2_dx_entry_list {int de_num_used; struct ocfs2_dx_entry* de_entries; } ;
struct ocfs2_dx_entry {int dx_dirent_blk; void* dx_minor_hash; void* dx_major_hash; } ;


 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memset (struct ocfs2_dx_entry*,int ,int) ;

__attribute__((used)) static void ocfs2_dx_entry_list_insert(struct ocfs2_dx_entry_list *entry_list,
           struct ocfs2_dx_hinfo *hinfo,
           u64 dirent_blk)
{
 int i;
 struct ocfs2_dx_entry *dx_entry;

 i = le16_to_cpu(entry_list->de_num_used);
 dx_entry = &entry_list->de_entries[i];

 memset(dx_entry, 0, sizeof(*dx_entry));
 dx_entry->dx_major_hash = cpu_to_le32(hinfo->major_hash);
 dx_entry->dx_minor_hash = cpu_to_le32(hinfo->minor_hash);
 dx_entry->dx_dirent_blk = cpu_to_le64(dirent_blk);

 le16_add_cpu(&entry_list->de_num_used, 1);
}
