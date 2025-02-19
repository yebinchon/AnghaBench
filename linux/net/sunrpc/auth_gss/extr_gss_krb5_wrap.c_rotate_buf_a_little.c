
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {unsigned int len; } ;


 int BUG_ON (int) ;
 int LOCAL_BUF_LEN ;
 unsigned int min (int,unsigned int) ;
 int read_bytes_from_xdr_buf (struct xdr_buf*,unsigned int,char*,unsigned int) ;
 int write_bytes_to_xdr_buf (struct xdr_buf*,unsigned int,char*,unsigned int) ;

__attribute__((used)) static void rotate_buf_a_little(struct xdr_buf *buf, unsigned int shift)
{
 char head[LOCAL_BUF_LEN];
 char tmp[LOCAL_BUF_LEN];
 unsigned int this_len, i;

 BUG_ON(shift > LOCAL_BUF_LEN);

 read_bytes_from_xdr_buf(buf, 0, head, shift);
 for (i = 0; i + shift < buf->len; i += LOCAL_BUF_LEN) {
  this_len = min(LOCAL_BUF_LEN, buf->len - (i + shift));
  read_bytes_from_xdr_buf(buf, i+shift, tmp, this_len);
  write_bytes_to_xdr_buf(buf, i, tmp, this_len);
 }
 write_bytes_to_xdr_buf(buf, buf->len - shift, head, shift);
}
