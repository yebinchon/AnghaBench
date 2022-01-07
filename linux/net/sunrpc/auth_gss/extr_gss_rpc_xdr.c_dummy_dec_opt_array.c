
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct gssx_option_array {int * data; scalar_t__ count; } ;
struct gssx_option {int dummy; } ;
typedef int dummy ;
typedef int __be32 ;


 int ENOSPC ;
 scalar_t__ be32_to_cpup (int ) ;
 int gssx_dec_option (struct xdr_stream*,struct gssx_option*) ;
 int memset (struct gssx_option*,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int dummy_dec_opt_array(struct xdr_stream *xdr,
    struct gssx_option_array *oa)
{
 struct gssx_option dummy;
 u32 count, i;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;
 count = be32_to_cpup(p++);
 memset(&dummy, 0, sizeof(dummy));
 for (i = 0; i < count; i++) {
  gssx_dec_option(xdr, &dummy);
 }

 oa->count = 0;
 oa->data = ((void*)0);
 return 0;
}
