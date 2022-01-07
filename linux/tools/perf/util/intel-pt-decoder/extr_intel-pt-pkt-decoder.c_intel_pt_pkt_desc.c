
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {unsigned long long payload; int type; int count; } ;


 unsigned long long BIT63 ;
 unsigned long long NR_FLAG ;
 int __fallthrough ;
 char* intel_pt_pkt_name (int) ;
 int snprintf (char*,size_t,char*,...) ;

int intel_pt_pkt_desc(const struct intel_pt_pkt *packet, char *buf,
        size_t buf_len)
{
 int ret, i, nr;
 unsigned long long payload = packet->payload;
 const char *name = intel_pt_pkt_name(packet->type);

 switch (packet->type) {
 case 159:
 case 143:
 case 141:
 case 140:
 case 130:
 case 144:
  return snprintf(buf, buf_len, "%s", name);
 case 131: {
  size_t blen = buf_len;

  ret = snprintf(buf, blen, "%s ", name);
  if (ret < 0)
   return ret;
  buf += ret;
  blen -= ret;
  for (i = 0; i < packet->count; i++) {
   if (payload & BIT63)
    ret = snprintf(buf, blen, "T");
   else
    ret = snprintf(buf, blen, "N");
   if (ret < 0)
    return ret;
   buf += ret;
   blen -= ret;
   payload <<= 1;
  }
  ret = snprintf(buf, blen, " (%d)", packet->count);
  if (ret < 0)
   return ret;
  blen -= ret;
  return buf_len - blen;
 }
 case 134:
 case 133:
 case 135:
 case 150:
  if (!(packet->count))
   return snprintf(buf, buf_len, "%s no ip", name);
  __fallthrough;
 case 153:
 case 128:
 case 146:
 case 149:
 case 154:
 case 129:
  return snprintf(buf, buf_len, "%s 0x%llx", name, payload);
 case 132:
  return snprintf(buf, buf_len, "%s CTC 0x%x FC 0x%x", name,
    (unsigned)payload, packet->count);
 case 148:
  return snprintf(buf, buf_len, "%s %lld", name, payload);
 case 147:
  return snprintf(buf, buf_len, "%s TXAbort:%u InTX:%u",
    name, (unsigned)(payload >> 1) & 1,
    (unsigned)payload & 1);
 case 142:
  nr = packet->payload & NR_FLAG ? 1 : 0;
  payload &= ~NR_FLAG;
  ret = snprintf(buf, buf_len, "%s 0x%llx (NR=%d)",
          name, payload, nr);
  return ret;
 case 139:
  return snprintf(buf, buf_len, "%s 0x%llx IP:0", name, payload);
 case 138:
  return snprintf(buf, buf_len, "%s 0x%llx IP:1", name, payload);
 case 157:
 case 152:
  return snprintf(buf, buf_len, "%s IP:0", name);
 case 156:
 case 151:
  return snprintf(buf, buf_len, "%s IP:1", name);
 case 145:
  return snprintf(buf, buf_len, "%s 0x%llx Hints 0x%x Extensions 0x%x",
    name, payload, (unsigned int)(payload & 0xff),
    (unsigned int)((payload >> 32) & 0x3));
 case 137:
  return snprintf(buf, buf_len, "%s 0x%llx HW:%u CState:%u Sub-CState:%u",
    name, payload, !!(payload & 0x80),
    (unsigned int)((payload >> 12) & 0xf),
    (unsigned int)((payload >> 8) & 0xf));
 case 136:
  return snprintf(buf, buf_len, "%s 0x%llx Last CState:%u Deepest CState:%u Wake Reason 0x%x",
    name, payload,
    (unsigned int)((payload >> 4) & 0xf),
    (unsigned int)(payload & 0xf),
    (unsigned int)((payload >> 8) & 0xf));
 case 158:
  return snprintf(buf, buf_len, "%s SZ %s-byte Type 0x%llx",
    name, packet->count ? "4" : "8", payload);
 case 155:
  return snprintf(buf, buf_len, "%s ID 0x%02x Value 0x%llx",
    name, packet->count, payload);
 default:
  break;
 }
 return snprintf(buf, buf_len, "%s 0x%llx (%d)",
   name, payload, packet->count);
}
