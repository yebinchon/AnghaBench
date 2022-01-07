
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_flags; } ;
struct TYPE_4__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_2__ m_inc; } ;
struct rds_connection {struct rds_cong_map* c_lcong; } ;
struct rds_cong_map {int m_page_addrs; } ;


 int IS_ERR (struct rds_message*) ;
 int RDS_CONG_MAP_BYTES ;
 int RDS_FLAG_CONG_BITMAP ;
 struct rds_message* rds_message_map_pages (int ,int ) ;

struct rds_message *rds_cong_update_alloc(struct rds_connection *conn)
{
 struct rds_cong_map *map = conn->c_lcong;
 struct rds_message *rm;

 rm = rds_message_map_pages(map->m_page_addrs, RDS_CONG_MAP_BYTES);
 if (!IS_ERR(rm))
  rm->m_inc.i_hdr.h_flags = RDS_FLAG_CONG_BITMAP;

 return rm;
}
