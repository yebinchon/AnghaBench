
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmdif {int dummy; } ;



 int EACCES ;




 int SEND_GOTO (struct cmdif*,int) ;
 int atoh (unsigned char const*,int) ;
 int senddata (struct cmdif*,unsigned char const*,int) ;
 int snd_printdd (char*,int) ;

__attribute__((used)) static int loadfirmware(struct cmdif *cif, const unsigned char *img,
   unsigned int size)
{
 const unsigned char *in;
 u32 laddr, saddr, t, val;
 int err = 0;

 laddr = saddr = 0;
 while (size > 0 && err == 0) {
  in = img;
  if (in[0] == ':') {
   t = atoh(&in[7], 2);
   switch (t) {
   case 132:
    err = senddata(cif, in, laddr + saddr);
    break;
   case 128:
    saddr = atoh(&in[9], 4) << 4;
    break;
   case 129:
    laddr = atoh(&in[9], 4) << 16;
    break;
   case 130:
    val = atoh(&in[9], 8);
    if (SEND_GOTO(cif, val) != 0)
     err = -EACCES;
    break;
   case 131:
    size = 0;
    break;
   default:
    break;
   }
   while (size > 0) {
    size--;
    if (*img++ == '\n')
     break;
   }
  }
 }
 snd_printdd("load firmware return %d\n", err);
 return err;
}
