
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sctp_sm_table_entry {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_state { ____Placeholder_sctp_state } sctp_state ;
typedef enum sctp_cid { ____Placeholder_sctp_cid } sctp_cid ;





 int SCTP_CID_BASE_MAX ;
 int SCTP_CID_DATA ;

 int SCTP_CID_I_DATA ;


 int SCTP_STATE_MAX ;
 struct sctp_sm_table_entry const** addip_chunk_event_table ;
 struct sctp_sm_table_entry const** auth_chunk_event_table ;
 struct sctp_sm_table_entry const bug ;
 struct sctp_sm_table_entry const** chunk_event_table ;
 struct sctp_sm_table_entry const* chunk_event_table_unknown ;
 struct sctp_sm_table_entry const** prsctp_chunk_event_table ;
 struct sctp_sm_table_entry const** reconf_chunk_event_table ;

__attribute__((used)) static const struct sctp_sm_table_entry *sctp_chunk_event_lookup(
      struct net *net,
      enum sctp_cid cid,
      enum sctp_state state)
{
 if (state > SCTP_STATE_MAX)
  return &bug;

 if (cid == SCTP_CID_I_DATA)
  cid = SCTP_CID_DATA;

 if (cid <= SCTP_CID_BASE_MAX)
  return &chunk_event_table[cid][state];

 switch ((u16)cid) {
 case 130:
 case 129:
  return &prsctp_chunk_event_table[0][state];

 case 133:
  return &addip_chunk_event_table[0][state];

 case 132:
  return &addip_chunk_event_table[1][state];

 case 128:
  return &reconf_chunk_event_table[0][state];

 case 131:
  return &auth_chunk_event_table[0][state];
 }

 return &chunk_event_table_unknown[state];
}
