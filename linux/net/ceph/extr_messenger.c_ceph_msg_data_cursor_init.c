
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg_data_cursor {size_t total_resid; int data; } ;
struct ceph_msg {size_t data_length; int data; int num_data_items; struct ceph_msg_data_cursor cursor; } ;


 int BUG_ON (int) ;
 int __ceph_msg_data_cursor_init (struct ceph_msg_data_cursor*) ;

__attribute__((used)) static void ceph_msg_data_cursor_init(struct ceph_msg *msg, size_t length)
{
 struct ceph_msg_data_cursor *cursor = &msg->cursor;

 BUG_ON(!length);
 BUG_ON(length > msg->data_length);
 BUG_ON(!msg->num_data_items);

 cursor->total_resid = length;
 cursor->data = msg->data;

 __ceph_msg_data_cursor_init(cursor);
}
