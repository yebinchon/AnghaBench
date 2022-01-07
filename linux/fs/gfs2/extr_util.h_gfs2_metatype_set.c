
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gfs2_meta_header {void* mh_format; void* mh_type; } ;
struct buffer_head {scalar_t__ b_data; } ;


 void* cpu_to_be32 (int ) ;

__attribute__((used)) static inline void gfs2_metatype_set(struct buffer_head *bh, u16 type,
         u16 format)
{
 struct gfs2_meta_header *mh;
 mh = (struct gfs2_meta_header *)bh->b_data;
 mh->mh_type = cpu_to_be32(type);
 mh->mh_format = cpu_to_be32(format);
}
