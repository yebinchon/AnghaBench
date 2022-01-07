
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addip_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
struct sctp_addiphdr {int serial; } ;
typedef int asconf ;
typedef int __u32 ;


 int GFP_ATOMIC ;
 int SCTP_CID_ASCONF_ACK ;
 int htonl (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_addiphdr*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_asconf_ack(const struct sctp_association *asoc,
            __u32 serial, int vparam_len)
{
 struct sctp_addiphdr asconf;
 struct sctp_chunk *retval;
 int length = sizeof(asconf) + vparam_len;


 retval = sctp_make_control(asoc, SCTP_CID_ASCONF_ACK, 0, length,
       GFP_ATOMIC);
 if (!retval)
  return ((void*)0);

 asconf.serial = htonl(serial);

 retval->subh.addip_hdr =
  sctp_addto_chunk(retval, sizeof(asconf), &asconf);

 return retval;
}
