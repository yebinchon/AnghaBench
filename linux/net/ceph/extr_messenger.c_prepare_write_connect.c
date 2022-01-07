
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ flags; void* protocol_version; void* global_seq; void* connect_seq; void* host_type; int features; } ;
struct TYPE_4__ {int type; } ;
struct ceph_connection {int connect_seq; TYPE_2__ out_connect; int msgr; TYPE_1__ peer_name; } ;
struct TYPE_6__ {int supported_features; } ;


 int BUG () ;
 int CEPH_ENTITY_TYPE_CLIENT ;



 int CEPH_MDSC_PROTOCOL ;
 int CEPH_MONC_PROTOCOL ;
 int CEPH_OSDC_PROTOCOL ;
 int __prepare_write_connect (struct ceph_connection*) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dout (char*,struct ceph_connection*,int,unsigned int,int) ;
 TYPE_3__* from_msgr (int ) ;
 int get_connect_authorizer (struct ceph_connection*) ;
 unsigned int get_global_seq (int ,int ) ;

__attribute__((used)) static int prepare_write_connect(struct ceph_connection *con)
{
 unsigned int global_seq = get_global_seq(con->msgr, 0);
 int proto;
 int ret;

 switch (con->peer_name.type) {
 case 129:
  proto = CEPH_MONC_PROTOCOL;
  break;
 case 128:
  proto = CEPH_OSDC_PROTOCOL;
  break;
 case 130:
  proto = CEPH_MDSC_PROTOCOL;
  break;
 default:
  BUG();
 }

 dout("prepare_write_connect %p cseq=%d gseq=%d proto=%d\n", con,
      con->connect_seq, global_seq, proto);

 con->out_connect.features =
     cpu_to_le64(from_msgr(con->msgr)->supported_features);
 con->out_connect.host_type = cpu_to_le32(CEPH_ENTITY_TYPE_CLIENT);
 con->out_connect.connect_seq = cpu_to_le32(con->connect_seq);
 con->out_connect.global_seq = cpu_to_le32(global_seq);
 con->out_connect.protocol_version = cpu_to_le32(proto);
 con->out_connect.flags = 0;

 ret = get_connect_authorizer(con);
 if (ret)
  return ret;

 __prepare_write_connect(con);
 return 0;
}
