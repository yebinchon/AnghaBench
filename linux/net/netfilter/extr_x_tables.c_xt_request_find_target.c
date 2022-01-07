
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xt_target {int dummy; } ;


 int EINVAL ;
 struct xt_target* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 scalar_t__ XT_EXTENSION_MAXNAMELEN ;
 int request_module (char*,int ,char const*) ;
 scalar_t__ strnlen (char const*,scalar_t__) ;
 struct xt_target* xt_find_target (size_t,char const*,size_t) ;
 int * xt_prefix ;

struct xt_target *xt_request_find_target(u8 af, const char *name, u8 revision)
{
 struct xt_target *target;

 if (strnlen(name, XT_EXTENSION_MAXNAMELEN) == XT_EXTENSION_MAXNAMELEN)
  return ERR_PTR(-EINVAL);

 target = xt_find_target(af, name, revision);
 if (IS_ERR(target)) {
  request_module("%st_%s", xt_prefix[af], name);
  target = xt_find_target(af, name, revision);
 }

 return target;
}
