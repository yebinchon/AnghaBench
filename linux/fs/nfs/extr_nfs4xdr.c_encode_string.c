
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ xdr_stream_encode_opaque (struct xdr_stream*,char const*,unsigned int) ;

__attribute__((used)) static void encode_string(struct xdr_stream *xdr, unsigned int len, const char *str)
{
 WARN_ON_ONCE(xdr_stream_encode_opaque(xdr, str, len) < 0);
}
