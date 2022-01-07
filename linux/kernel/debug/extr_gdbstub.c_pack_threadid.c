
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_THREAD_ID_SIZE ;
 char* hex_byte_pack (char*,unsigned char) ;

__attribute__((used)) static char *pack_threadid(char *pkt, unsigned char *id)
{
 unsigned char *limit;
 int lzero = 1;

 limit = id + (BUF_THREAD_ID_SIZE / 2);
 while (id < limit) {
  if (!lzero || *id != 0) {
   pkt = hex_byte_pack(pkt, *id);
   lzero = 0;
  }
  id++;
 }

 if (lzero)
  pkt = hex_byte_pack(pkt, 0);

 return pkt;
}
