
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int page_address (int ) ;
 int pfn_to_page (unsigned long) ;
 int safe_copy_page (int ,int ) ;

__attribute__((used)) static inline void copy_data_page(unsigned long dst_pfn, unsigned long src_pfn)
{
 safe_copy_page(page_address(pfn_to_page(dst_pfn)),
    pfn_to_page(src_pfn));
}
