
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {void* mh_format; void* mh_type; void* mh_magic; } ;
struct gfs2_log_descriptor {scalar_t__ ld_data2; void* ld_data1; void* ld_length; void* ld_type; TYPE_1__ ld_header; } ;


 int GFP_NOIO ;
 int GFS2_FORMAT_LD ;
 int GFS2_MAGIC ;
 int GFS2_METATYPE_LD ;
 int clear_page (struct gfs2_log_descriptor*) ;
 void* cpu_to_be32 (int ) ;
 int gfs2_page_pool ;
 struct page* mempool_alloc (int ,int ) ;
 struct gfs2_log_descriptor* page_address (struct page*) ;

__attribute__((used)) static struct page *gfs2_get_log_desc(struct gfs2_sbd *sdp, u32 ld_type,
          u32 ld_length, u32 ld_data1)
{
 struct page *page = mempool_alloc(gfs2_page_pool, GFP_NOIO);
 struct gfs2_log_descriptor *ld = page_address(page);
 clear_page(ld);
 ld->ld_header.mh_magic = cpu_to_be32(GFS2_MAGIC);
 ld->ld_header.mh_type = cpu_to_be32(GFS2_METATYPE_LD);
 ld->ld_header.mh_format = cpu_to_be32(GFS2_FORMAT_LD);
 ld->ld_type = cpu_to_be32(ld_type);
 ld->ld_length = cpu_to_be32(ld_length);
 ld->ld_data1 = cpu_to_be32(ld_data1);
 ld->ld_data2 = 0;
 return page;
}
