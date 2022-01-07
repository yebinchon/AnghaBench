
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_ftrace_record {int dummy; } ;
struct persistent_ram_zone {size_t old_log_size; void* old_log; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 scalar_t__ pstore_ftrace_read_timestamp (struct pstore_ftrace_record*) ;

__attribute__((used)) static ssize_t ftrace_log_combine(struct persistent_ram_zone *dest,
      struct persistent_ram_zone *src)
{
 size_t dest_size, src_size, total, dest_off, src_off;
 size_t dest_idx = 0, src_idx = 0, merged_idx = 0;
 void *merged_buf;
 struct pstore_ftrace_record *drec, *srec, *mrec;
 size_t record_size = sizeof(struct pstore_ftrace_record);

 dest_off = dest->old_log_size % record_size;
 dest_size = dest->old_log_size - dest_off;

 src_off = src->old_log_size % record_size;
 src_size = src->old_log_size - src_off;

 total = dest_size + src_size;
 merged_buf = kmalloc(total, GFP_KERNEL);
 if (!merged_buf)
  return -ENOMEM;

 drec = (struct pstore_ftrace_record *)(dest->old_log + dest_off);
 srec = (struct pstore_ftrace_record *)(src->old_log + src_off);
 mrec = (struct pstore_ftrace_record *)(merged_buf);

 while (dest_size > 0 && src_size > 0) {
  if (pstore_ftrace_read_timestamp(&drec[dest_idx]) <
      pstore_ftrace_read_timestamp(&srec[src_idx])) {
   mrec[merged_idx++] = drec[dest_idx++];
   dest_size -= record_size;
  } else {
   mrec[merged_idx++] = srec[src_idx++];
   src_size -= record_size;
  }
 }

 while (dest_size > 0) {
  mrec[merged_idx++] = drec[dest_idx++];
  dest_size -= record_size;
 }

 while (src_size > 0) {
  mrec[merged_idx++] = srec[src_idx++];
  src_size -= record_size;
 }

 kfree(dest->old_log);
 dest->old_log = merged_buf;
 dest->old_log_size = total;

 return 0;
}
