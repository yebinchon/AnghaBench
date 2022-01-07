
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cmdret {unsigned short* retwords; } ;
struct cmdif {int dummy; } ;


 union cmdret CMDRET_ZERO ;
 int EIO ;
 int MAX_WRITE_RETRY ;
 int SEND_RDGV (struct cmdif*,short,short,union cmdret*) ;
 int SEND_SDGV (struct cmdif*,short,short,unsigned short,unsigned short) ;
 int snd_printdd (char*,...) ;

__attribute__((used)) static int
setmixer(struct cmdif *cif, short num, unsigned short rval, unsigned short lval)
{
 union cmdret rptr = CMDRET_ZERO;
 int i = 0;

 snd_printdd("sent mixer %d: 0x%x 0x%x\n", num, rval, lval);
 do {
  SEND_SDGV(cif, num, num, rval, lval);
  SEND_RDGV(cif, num, num, &rptr);
  if (rptr.retwords[0] == lval && rptr.retwords[1] == rval)
   return 0;
 } while (i++ < MAX_WRITE_RETRY);
 snd_printdd("sent mixer failed\n");
 return -EIO;
}
