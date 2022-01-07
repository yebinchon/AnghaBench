
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {scalar_t__ len; int data; } ;


 int TWRITE_STR (unsigned char*,int ,int) ;
 int der_write_length (unsigned char**,scalar_t__) ;

void
g_make_token_header(struct xdr_netobj *mech, int body_size, unsigned char **buf)
{
 *(*buf)++ = 0x60;
 der_write_length(buf, 2 + mech->len + body_size);
 *(*buf)++ = 0x06;
 *(*buf)++ = (unsigned char) mech->len;
 TWRITE_STR(*buf, mech->data, ((int) mech->len));
}
