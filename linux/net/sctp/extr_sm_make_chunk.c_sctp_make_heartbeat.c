
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_transport {int hb_nonce; int ipaddr; } ;
struct TYPE_3__ {int length; int type; } ;
struct sctp_sender_hb_info {int hb_nonce; int sent_at; int daddr; TYPE_1__ param_hdr; } ;
struct TYPE_4__ {int hbs_hdr; } ;
struct sctp_chunk {TYPE_2__ subh; struct sctp_transport* transport; } ;
struct sctp_association {int dummy; } ;
typedef int hbinfo ;


 int GFP_ATOMIC ;
 int SCTP_CID_HEARTBEAT ;
 int SCTP_PARAM_HEARTBEAT_INFO ;
 int htons (int) ;
 int jiffies ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_sender_hb_info*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;

struct sctp_chunk *sctp_make_heartbeat(const struct sctp_association *asoc,
           const struct sctp_transport *transport)
{
 struct sctp_sender_hb_info hbinfo;
 struct sctp_chunk *retval;

 retval = sctp_make_control(asoc, SCTP_CID_HEARTBEAT, 0,
       sizeof(hbinfo), GFP_ATOMIC);

 if (!retval)
  goto nodata;

 hbinfo.param_hdr.type = SCTP_PARAM_HEARTBEAT_INFO;
 hbinfo.param_hdr.length = htons(sizeof(hbinfo));
 hbinfo.daddr = transport->ipaddr;
 hbinfo.sent_at = jiffies;
 hbinfo.hb_nonce = transport->hb_nonce;




 retval->transport = (struct sctp_transport *) transport;
 retval->subh.hbs_hdr = sctp_addto_chunk(retval, sizeof(hbinfo),
      &hbinfo);

nodata:
 return retval;
}
