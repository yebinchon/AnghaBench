
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_addr {scalar_t__ type; scalar_t__ src_name; scalar_t__ dst_name; scalar_t__ sa; scalar_t__ da; } ;



__attribute__((used)) static bool j1939_session_match(struct j1939_addr *se_addr,
    struct j1939_addr *sk_addr, bool reverse)
{
 if (se_addr->type != sk_addr->type)
  return 0;

 if (reverse) {
  if (se_addr->src_name) {
   if (se_addr->src_name != sk_addr->dst_name)
    return 0;
  } else if (se_addr->sa != sk_addr->da) {
   return 0;
  }

  if (se_addr->dst_name) {
   if (se_addr->dst_name != sk_addr->src_name)
    return 0;
  } else if (se_addr->da != sk_addr->sa) {
   return 0;
  }
 } else {
  if (se_addr->src_name) {
   if (se_addr->src_name != sk_addr->src_name)
    return 0;
  } else if (se_addr->sa != sk_addr->sa) {
   return 0;
  }

  if (se_addr->dst_name) {
   if (se_addr->dst_name != sk_addr->dst_name)
    return 0;
  } else if (se_addr->da != sk_addr->da) {
   return 0;
  }
 }

 return 1;
}
