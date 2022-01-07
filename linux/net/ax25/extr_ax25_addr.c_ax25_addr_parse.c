
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastrepeat; int ndigi; int* repeated; int * calls; } ;
typedef TYPE_1__ ax25_digi ;
typedef int ax25_address ;


 int AX25_ADDR_LEN ;
 unsigned char const AX25_CBIT ;
 int AX25_COMMAND ;
 unsigned char const AX25_DAMA_FLAG ;
 unsigned char const AX25_EBIT ;
 unsigned char const AX25_HBIT ;
 int AX25_MAX_DIGIS ;
 int AX25_RESPONSE ;
 int memcpy (int *,unsigned char const*,int) ;

const unsigned char *ax25_addr_parse(const unsigned char *buf, int len,
 ax25_address *src, ax25_address *dest, ax25_digi *digi, int *flags,
 int *dama)
{
 int d = 0;

 if (len < 14) return ((void*)0);

 if (flags != ((void*)0)) {
  *flags = 0;

  if (buf[6] & AX25_CBIT)
   *flags = AX25_COMMAND;
  if (buf[13] & AX25_CBIT)
   *flags = AX25_RESPONSE;
 }

 if (dama != ((void*)0))
  *dama = ~buf[13] & AX25_DAMA_FLAG;


 if (dest != ((void*)0))
  memcpy(dest, buf + 0, AX25_ADDR_LEN);
 if (src != ((void*)0))
  memcpy(src, buf + 7, AX25_ADDR_LEN);

 buf += 2 * AX25_ADDR_LEN;
 len -= 2 * AX25_ADDR_LEN;

 digi->lastrepeat = -1;
 digi->ndigi = 0;

 while (!(buf[-1] & AX25_EBIT)) {
  if (d >= AX25_MAX_DIGIS)
   return ((void*)0);
  if (len < AX25_ADDR_LEN)
   return ((void*)0);

  memcpy(&digi->calls[d], buf, AX25_ADDR_LEN);
  digi->ndigi = d + 1;

  if (buf[6] & AX25_HBIT) {
   digi->repeated[d] = 1;
   digi->lastrepeat = d;
  } else {
   digi->repeated[d] = 0;
  }

  buf += AX25_ADDR_LEN;
  len -= AX25_ADDR_LEN;
  d++;
 }

 return buf;
}
