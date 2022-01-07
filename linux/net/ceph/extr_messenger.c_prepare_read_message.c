
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {scalar_t__ in_data_crc; scalar_t__ in_middle_crc; scalar_t__ in_front_crc; scalar_t__ in_base_pos; int * in_msg; } ;


 int BUG_ON (int ) ;
 int dout (char*,struct ceph_connection*) ;

__attribute__((used)) static int prepare_read_message(struct ceph_connection *con)
{
 dout("prepare_read_message %p\n", con);
 BUG_ON(con->in_msg != ((void*)0));
 con->in_base_pos = 0;
 con->in_front_crc = con->in_middle_crc = con->in_data_crc = 0;
 return 0;
}
