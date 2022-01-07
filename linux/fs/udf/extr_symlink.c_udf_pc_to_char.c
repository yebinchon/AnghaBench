
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct pathComponent {int componentType; int lengthComponentIdent; int componentIdent; } ;


 int EIO ;
 int ENAMETOOLONG ;
 int memcpy (unsigned char*,char*,int) ;
 int udf_get_filename (struct super_block*,int ,int,unsigned char*,int) ;

__attribute__((used)) static int udf_pc_to_char(struct super_block *sb, unsigned char *from,
     int fromlen, unsigned char *to, int tolen)
{
 struct pathComponent *pc;
 int elen = 0;
 int comp_len;
 unsigned char *p = to;


 tolen--;
 while (elen < fromlen) {
  pc = (struct pathComponent *)(from + elen);
  elen += sizeof(struct pathComponent);
  switch (pc->componentType) {
  case 1:




   if (pc->lengthComponentIdent > 0) {
    elen += pc->lengthComponentIdent;
    break;
   }

  case 2:
   if (tolen == 0)
    return -ENAMETOOLONG;
   p = to;
   *p++ = '/';
   tolen--;
   break;
  case 3:
   if (tolen < 3)
    return -ENAMETOOLONG;
   memcpy(p, "../", 3);
   p += 3;
   tolen -= 3;
   break;
  case 4:
   if (tolen < 2)
    return -ENAMETOOLONG;
   memcpy(p, "./", 2);
   p += 2;
   tolen -= 2;

   break;
  case 5:
   elen += pc->lengthComponentIdent;
   if (elen > fromlen)
    return -EIO;
   comp_len = udf_get_filename(sb, pc->componentIdent,
          pc->lengthComponentIdent,
          p, tolen);
   if (comp_len < 0)
    return comp_len;

   p += comp_len;
   tolen -= comp_len;
   if (tolen == 0)
    return -ENAMETOOLONG;
   *p++ = '/';
   tolen--;
   break;
  }
 }
 if (p > to + 1)
  p[-1] = '\0';
 else
  p[0] = '\0';
 return 0;
}
