
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum j1939_xtp_abort { ____Placeholder_j1939_xtp_abort } j1939_xtp_abort ;
__attribute__((used)) static const char *j1939_xtp_abort_to_str(enum j1939_xtp_abort abort)
{
 switch (abort) {
 case 140:
  return "Already in one or more connection managed sessions and cannot support another.";
 case 130:
  return "System resources were needed for another task so this connection managed session was terminated.";
 case 129:
  return "A timeout occurred and this is the connection abort to close the session.";
 case 133:
  return "CTS messages received when data transfer is in progress";
 case 134:
  return "Maximal retransmit request limit reached";
 case 128:
  return "Unexpected data transfer packet";
 case 141:
  return "Bad sequence number (and software is not able to recover)";
 case 139:
  return "Duplicate sequence number (and software is not able to recover)";
 case 135:
  return "Unexpected EDPO packet (ETP) or Message size > 1785 bytes (TP)";
 case 142:
  return "Unexpected EDPO PGN (PGN in EDPO is bad)";
 case 136:
  return "EDPO number of packets is greater than CTS";
 case 143:
  return "Bad EDPO offset";
 case 131:
  return "Deprecated. Use 250 instead (Any other reason)";
 case 137:
  return "Unexpected ECTS PGN (PGN in ECTS is bad)";
 case 138:
  return "ECTS requested packets exceeds message size";
 case 132:
  return "Any other reason (if a Connection Abort reason is identified that is not listed in the table use code 250)";
 default:
  return "<unknown>";
 }
}
