
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sctp_subtype {size_t chunk; } ;





 size_t SCTP_CID_BASE_MAX ;




 char const** sctp_cid_tbl ;

const char *sctp_cname(const union sctp_subtype cid)
{
 if (cid.chunk <= SCTP_CID_BASE_MAX)
  return sctp_cid_tbl[cid.chunk];

 switch (cid.chunk) {
 case 134:
  return "ASCONF";

 case 133:
  return "ASCONF_ACK";

 case 131:
  return "FWD_TSN";

 case 132:
  return "AUTH";

 case 128:
  return "RECONF";

 case 130:
  return "I_DATA";

 case 129:
  return "I_FWD_TSN";

 default:
  break;
 }

 return "unknown chunk";
}
