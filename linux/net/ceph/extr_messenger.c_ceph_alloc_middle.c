
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int middle_len; int type; } ;
struct ceph_msg {int middle; TYPE_1__ hdr; } ;
struct ceph_connection {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int ceph_buffer_new (int,int ) ;
 int ceph_msg_type_name (int) ;
 int dout (char*,struct ceph_msg*,int,int ,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ceph_alloc_middle(struct ceph_connection *con, struct ceph_msg *msg)
{
 int type = le16_to_cpu(msg->hdr.type);
 int middle_len = le32_to_cpu(msg->hdr.middle_len);

 dout("alloc_middle %p type %d %s middle_len %d\n", msg, type,
      ceph_msg_type_name(type), middle_len);
 BUG_ON(!middle_len);
 BUG_ON(msg->middle);

 msg->middle = ceph_buffer_new(middle_len, GFP_NOFS);
 if (!msg->middle)
  return -ENOMEM;
 return 0;
}
