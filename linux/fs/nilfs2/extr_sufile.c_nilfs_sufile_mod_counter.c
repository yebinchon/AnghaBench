
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nilfs_sufile_header {int sh_ndirtysegs; int sh_ncleansegs; } ;
struct buffer_head {int b_page; } ;


 int bh_offset (struct buffer_head*) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int le64_add_cpu (int *,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;

__attribute__((used)) static void nilfs_sufile_mod_counter(struct buffer_head *header_bh,
         u64 ncleanadd, u64 ndirtyadd)
{
 struct nilfs_sufile_header *header;
 void *kaddr;

 kaddr = kmap_atomic(header_bh->b_page);
 header = kaddr + bh_offset(header_bh);
 le64_add_cpu(&header->sh_ncleansegs, ncleanadd);
 le64_add_cpu(&header->sh_ndirtysegs, ndirtyadd);
 kunmap_atomic(kaddr);

 mark_buffer_dirty(header_bh);
}
