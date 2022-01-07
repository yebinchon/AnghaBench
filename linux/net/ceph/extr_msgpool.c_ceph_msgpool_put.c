
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_msgpool {int pool; int front_len; int name; } ;
struct TYPE_4__ {int front_len; } ;
struct TYPE_3__ {int iov_len; } ;
struct ceph_msg {int kref; scalar_t__ num_data_items; scalar_t__ data_length; TYPE_2__ hdr; TYPE_1__ front; } ;


 int cpu_to_le32 (int ) ;
 int dout (char*,int ,struct ceph_msg*) ;
 int kref_init (int *) ;
 int mempool_free (struct ceph_msg*,int ) ;

void ceph_msgpool_put(struct ceph_msgpool *pool, struct ceph_msg *msg)
{
 dout("msgpool_put %s %p\n", pool->name, msg);


 msg->front.iov_len = pool->front_len;
 msg->hdr.front_len = cpu_to_le32(pool->front_len);

 msg->data_length = 0;
 msg->num_data_items = 0;

 kref_init(&msg->kref);
 mempool_free(msg, pool->pool);
}
