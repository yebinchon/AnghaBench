
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ceph_msg {int dummy; } ;


 int ceph_msg_data_cursor_init (struct ceph_msg*,size_t) ;

__attribute__((used)) static void prepare_message_data(struct ceph_msg *msg, u32 data_len)
{


 ceph_msg_data_cursor_init(msg, (size_t)data_len);
}
