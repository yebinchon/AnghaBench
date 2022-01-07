
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct q6copp {int id; } ;
struct q6adm {int dummy; } ;
struct TYPE_2__ {int pkt_size; int src_port; int token; int opcode; int dest_port; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
typedef int close ;


 int ADM_CMD_DEVICE_CLOSE_V5 ;
 int APR_HDR_FIELD (int ,int ,int ) ;
 int APR_HDR_LEN (int ) ;
 int APR_HDR_SIZE ;
 int APR_MSG_TYPE_SEQ_CMD ;
 int APR_PKT_VER ;
 int q6adm_apr_send_copp_pkt (struct q6adm*,struct q6copp*,struct apr_pkt*,int ) ;

__attribute__((used)) static int q6adm_device_close(struct q6adm *adm, struct q6copp *copp,
         int port_id, int copp_idx)
{
 struct apr_pkt close;

 close.hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
     APR_HDR_LEN(APR_HDR_SIZE),
     APR_PKT_VER);
 close.hdr.pkt_size = sizeof(close);
 close.hdr.src_port = port_id;
 close.hdr.dest_port = copp->id;
 close.hdr.token = port_id << 16 | copp_idx;
 close.hdr.opcode = ADM_CMD_DEVICE_CLOSE_V5;

 return q6adm_apr_send_copp_pkt(adm, copp, &close, 0);
}
