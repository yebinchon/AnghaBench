
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {scalar_t__ len; } ;


 int der_length_size (unsigned int) ;

int
g_token_size(struct xdr_netobj *mech, unsigned int body_size)
{

 body_size += 2 + (int) mech->len;
 return 1 + der_length_size(body_size) + body_size;
}
