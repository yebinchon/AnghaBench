
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int (* uni2char ) (int ,unsigned char*,int ) ;} ;
typedef int __be16 ;


 int NLS_MAX_CHARSET_SIZE ;
 int be16_to_cpu (int ) ;
 int get_unaligned (int *) ;
 int stub1 (int ,unsigned char*,int ) ;

__attribute__((used)) static int
uni16_to_x8(unsigned char *ascii, __be16 *uni, int len, struct nls_table *nls)
{
 __be16 *ip, ch;
 unsigned char *op;

 ip = uni;
 op = ascii;

 while ((ch = get_unaligned(ip)) && len) {
  int llen;
  llen = nls->uni2char(be16_to_cpu(ch), op, NLS_MAX_CHARSET_SIZE);
  if (llen > 0)
   op += llen;
  else
   *op++ = '?';
  ip++;

  len--;
 }
 *op = 0;
 return (op - ascii);
}
