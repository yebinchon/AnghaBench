
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct xt_match {int dummy; } ;


 int EINVAL ;
 struct xt_match* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct xt_match*) ;
 scalar_t__ XT_EXTENSION_MAXNAMELEN ;
 int request_module (char*,int ,char const*) ;
 scalar_t__ strnlen (char const*,scalar_t__) ;
 struct xt_match* xt_find_match (size_t,char const*,size_t) ;
 int * xt_prefix ;

struct xt_match *
xt_request_find_match(uint8_t nfproto, const char *name, uint8_t revision)
{
 struct xt_match *match;

 if (strnlen(name, XT_EXTENSION_MAXNAMELEN) == XT_EXTENSION_MAXNAMELEN)
  return ERR_PTR(-EINVAL);

 match = xt_find_match(nfproto, name, revision);
 if (IS_ERR(match)) {
  request_module("%st_%s", xt_prefix[nfproto], name);
  match = xt_find_match(nfproto, name, revision);
 }

 return match;
}
