
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sctp_subtype {int chunk; } ;
struct sctp_sm_table_entry {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_state { ____Placeholder_sctp_state } sctp_state ;
typedef enum sctp_event_type { ____Placeholder_sctp_event_type } sctp_event_type ;


 struct sctp_sm_table_entry const* DO_LOOKUP (int ,int ,int ) ;
 int SCTP_EVENT_OTHER_MAX ;
 int SCTP_EVENT_PRIMITIVE_MAX ;
 int SCTP_EVENT_TIMEOUT_MAX ;




 struct sctp_sm_table_entry const bug ;
 int other ;
 int other_event_table ;
 int primitive ;
 int primitive_event_table ;
 struct sctp_sm_table_entry const* sctp_chunk_event_lookup (struct net*,int ,int) ;
 int timeout ;
 int timeout_event_table ;

const struct sctp_sm_table_entry *sctp_sm_lookup_event(
     struct net *net,
     enum sctp_event_type event_type,
     enum sctp_state state,
     union sctp_subtype event_subtype)
{
 switch (event_type) {
 case 131:
  return sctp_chunk_event_lookup(net, event_subtype.chunk, state);
 case 128:
  return DO_LOOKUP(SCTP_EVENT_TIMEOUT_MAX, timeout,
     timeout_event_table);
 case 130:
  return DO_LOOKUP(SCTP_EVENT_OTHER_MAX, other,
     other_event_table);
 case 129:
  return DO_LOOKUP(SCTP_EVENT_PRIMITIVE_MAX, primitive,
     primitive_event_table);
 default:

  return &bug;
 }
}
