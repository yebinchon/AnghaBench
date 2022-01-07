
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg_footer_old {int dummy; } ;
struct ceph_msg_footer {int dummy; } ;
struct ceph_connection {int peer_features; } ;


 int CEPH_FEATURE_MSG_AUTH ;

__attribute__((used)) static size_t sizeof_footer(struct ceph_connection *con)
{
 return (con->peer_features & CEPH_FEATURE_MSG_AUTH) ?
     sizeof(struct ceph_msg_footer) :
     sizeof(struct ceph_msg_footer_old);
}
