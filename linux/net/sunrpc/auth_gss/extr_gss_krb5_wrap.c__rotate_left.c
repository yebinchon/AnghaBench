
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {unsigned int len; } ;


 int LOCAL_BUF_LEN ;
 int min (unsigned int,int ) ;
 int rotate_buf_a_little (struct xdr_buf*,int) ;

__attribute__((used)) static void _rotate_left(struct xdr_buf *buf, unsigned int shift)
{
 int shifted = 0;
 int this_shift;

 shift %= buf->len;
 while (shifted < shift) {
  this_shift = min(shift - shifted, LOCAL_BUF_LEN);
  rotate_buf_a_little(buf, this_shift);
  shifted += this_shift;
 }
}
