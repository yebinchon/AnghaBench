
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ip_set_ext {int bytes_op; int bytes; int packets_op; int packets; } ;
struct ip_set_counter {int dummy; } ;
struct ip_set {int dummy; } ;


 int IPSET_FLAG_MATCH_COUNTERS ;
 scalar_t__ SET_WITH_COUNTER (struct ip_set*) ;
 scalar_t__ SET_WITH_SKBINFO (struct ip_set*) ;
 scalar_t__ SET_WITH_TIMEOUT (struct ip_set*) ;
 struct ip_set_counter* ext_counter (void*,struct ip_set*) ;
 int ext_skbinfo (void*,struct ip_set*) ;
 int ext_timeout (void*,struct ip_set*) ;
 int ip_set_get_bytes (struct ip_set_counter*) ;
 int ip_set_get_packets (struct ip_set_counter*) ;
 int ip_set_get_skbinfo (int ,struct ip_set_ext const*,struct ip_set_ext*,int) ;
 scalar_t__ ip_set_match_counter (int ,int ,int ) ;
 scalar_t__ ip_set_timeout_expired (int ) ;
 int ip_set_update_counter (struct ip_set_counter*,struct ip_set_ext const*,int) ;

bool
ip_set_match_extensions(struct ip_set *set, const struct ip_set_ext *ext,
   struct ip_set_ext *mext, u32 flags, void *data)
{
 if (SET_WITH_TIMEOUT(set) &&
     ip_set_timeout_expired(ext_timeout(data, set)))
  return 0;
 if (SET_WITH_COUNTER(set)) {
  struct ip_set_counter *counter = ext_counter(data, set);

  if (flags & IPSET_FLAG_MATCH_COUNTERS &&
      !(ip_set_match_counter(ip_set_get_packets(counter),
    mext->packets, mext->packets_op) &&
        ip_set_match_counter(ip_set_get_bytes(counter),
    mext->bytes, mext->bytes_op)))
   return 0;
  ip_set_update_counter(counter, ext, flags);
 }
 if (SET_WITH_SKBINFO(set))
  ip_set_get_skbinfo(ext_skbinfo(data, set),
       ext, mext, flags);
 return 1;
}
