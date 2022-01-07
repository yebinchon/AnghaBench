
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int in_tag; scalar_t__ in_base_pos; } ;


 int CEPH_MSGR_TAG_SEQ ;
 int dout (char*,struct ceph_connection*) ;

__attribute__((used)) static void prepare_read_seq(struct ceph_connection *con)
{
 dout("prepare_read_seq %p\n", con);
 con->in_base_pos = 0;
 con->in_tag = CEPH_MSGR_TAG_SEQ;
}
