
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct key {int flags; scalar_t__ expiry; TYPE_1__* domain_tag; } ;
struct TYPE_2__ {scalar_t__ removed; } ;


 int KEY_FLAG_DEAD ;
 int KEY_FLAG_INVALIDATED ;

__attribute__((used)) static inline bool key_is_dead(const struct key *key, time64_t limit)
{
 return
  key->flags & ((1 << KEY_FLAG_DEAD) |
         (1 << KEY_FLAG_INVALIDATED)) ||
  (key->expiry > 0 && key->expiry <= limit) ||
  key->domain_tag->removed;
}
