
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg_data {int dummy; } ;
struct ceph_msg {scalar_t__ num_data_items; scalar_t__ max_data_items; struct ceph_msg_data* data; } ;


 int BUG_ON (int) ;

__attribute__((used)) static struct ceph_msg_data *ceph_msg_data_add(struct ceph_msg *msg)
{
 BUG_ON(msg->num_data_items >= msg->max_data_items);
 return &msg->data[msg->num_data_items++];
}
