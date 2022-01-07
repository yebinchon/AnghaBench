
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {int index; unsigned long long payload; int type; } ;
 int EL_FLAG ;
 int NS_FLAG ;
 char* arm_spe_pkt_name (int) ;
 int snprintf (char*,size_t,char*,...) ;

int arm_spe_pkt_desc(const struct arm_spe_pkt *packet, char *buf,
       size_t buf_len)
{
 int ret, ns, el, idx = packet->index;
 unsigned long long payload = packet->payload;
 const char *name = arm_spe_pkt_name(packet->type);

 switch (packet->type) {
 case 136:
 case 129:
 case 132:
  return snprintf(buf, buf_len, "%s", name);
 case 131: {
  size_t blen = buf_len;

  ret = 0;
  ret = snprintf(buf, buf_len, "EV");
  buf += ret;
  blen -= ret;
  if (payload & 0x1) {
   ret = snprintf(buf, buf_len, " EXCEPTION-GEN");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x2) {
   ret = snprintf(buf, buf_len, " RETIRED");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x4) {
   ret = snprintf(buf, buf_len, " L1D-ACCESS");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x8) {
   ret = snprintf(buf, buf_len, " L1D-REFILL");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x10) {
   ret = snprintf(buf, buf_len, " TLB-ACCESS");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x20) {
   ret = snprintf(buf, buf_len, " TLB-REFILL");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x40) {
   ret = snprintf(buf, buf_len, " NOT-TAKEN");
   buf += ret;
   blen -= ret;
  }
  if (payload & 0x80) {
   ret = snprintf(buf, buf_len, " MISPRED");
   buf += ret;
   blen -= ret;
  }
  if (idx > 1) {
   if (payload & 0x100) {
    ret = snprintf(buf, buf_len, " LLC-ACCESS");
    buf += ret;
    blen -= ret;
   }
   if (payload & 0x200) {
    ret = snprintf(buf, buf_len, " LLC-REFILL");
    buf += ret;
    blen -= ret;
   }
   if (payload & 0x400) {
    ret = snprintf(buf, buf_len, " REMOTE-ACCESS");
    buf += ret;
    blen -= ret;
   }
  }
  if (ret < 0)
   return ret;
  blen -= ret;
  return buf_len - blen;
 }
 case 130:
  switch (idx) {
  case 0: return snprintf(buf, buf_len, "%s", payload & 0x1 ?
     "COND-SELECT" : "INSN-OTHER");
  case 1: {
   size_t blen = buf_len;

   if (payload & 0x1)
    ret = snprintf(buf, buf_len, "ST");
   else
    ret = snprintf(buf, buf_len, "LD");
   buf += ret;
   blen -= ret;
   if (payload & 0x2) {
    if (payload & 0x4) {
     ret = snprintf(buf, buf_len, " AT");
     buf += ret;
     blen -= ret;
    }
    if (payload & 0x8) {
     ret = snprintf(buf, buf_len, " EXCL");
     buf += ret;
     blen -= ret;
    }
    if (payload & 0x10) {
     ret = snprintf(buf, buf_len, " AR");
     buf += ret;
     blen -= ret;
    }
   } else if (payload & 0x4) {
    ret = snprintf(buf, buf_len, " SIMD-FP");
    buf += ret;
    blen -= ret;
   }
   if (ret < 0)
    return ret;
   blen -= ret;
   return buf_len - blen;
  }
  case 2: {
   size_t blen = buf_len;

   ret = snprintf(buf, buf_len, "B");
   buf += ret;
   blen -= ret;
   if (payload & 0x1) {
    ret = snprintf(buf, buf_len, " COND");
    buf += ret;
    blen -= ret;
   }
   if (payload & 0x2) {
    ret = snprintf(buf, buf_len, " IND");
    buf += ret;
    blen -= ret;
   }
   if (ret < 0)
    return ret;
   blen -= ret;
   return buf_len - blen;
   }
  default: return 0;
  }
 case 133:
 case 128:
  return snprintf(buf, buf_len, "%s %lld", name, payload);
 case 137:
  switch (idx) {
  case 0:
  case 1: ns = !!(packet->payload & NS_FLAG);
   el = (packet->payload & EL_FLAG) >> 61;
   payload &= ~(0xffULL << 56);
   return snprintf(buf, buf_len, "%s 0x%llx el%d ns=%d",
            (idx == 1) ? "TGT" : "PC", payload, el, ns);
  case 2: return snprintf(buf, buf_len, "VA 0x%llx", payload);
  case 3: ns = !!(packet->payload & NS_FLAG);
   payload &= ~(0xffULL << 56);
   return snprintf(buf, buf_len, "PA 0x%llx ns=%d",
     payload, ns);
  default: return 0;
  }
 case 135:
  return snprintf(buf, buf_len, "%s 0x%lx el%d", name,
    (unsigned long)payload, idx + 1);
 case 134: {
  size_t blen = buf_len;

  ret = snprintf(buf, buf_len, "%s %d ", name,
          (unsigned short)payload);
  buf += ret;
  blen -= ret;
  switch (idx) {
  case 0: ret = snprintf(buf, buf_len, "TOT"); break;
  case 1: ret = snprintf(buf, buf_len, "ISSUE"); break;
  case 2: ret = snprintf(buf, buf_len, "XLAT"); break;
  default: ret = 0;
  }
  if (ret < 0)
   return ret;
  blen -= ret;
  return buf_len - blen;
 }
 default:
  break;
 }

 return snprintf(buf, buf_len, "%s 0x%llx (%d)",
   name, payload, packet->index);
}
