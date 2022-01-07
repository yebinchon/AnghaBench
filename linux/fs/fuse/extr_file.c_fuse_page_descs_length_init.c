
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_page_desc {scalar_t__ offset; scalar_t__ length; } ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline void fuse_page_descs_length_init(struct fuse_page_desc *descs,
            unsigned int index,
            unsigned int nr_pages)
{
 int i;

 for (i = index; i < index + nr_pages; i++)
  descs[i].length = PAGE_SIZE - descs[i].offset;
}
