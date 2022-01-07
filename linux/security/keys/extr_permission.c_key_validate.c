
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct key {int expiry; int flags; } ;


 int EKEYEXPIRED ;
 int EKEYREVOKED ;
 int ENOKEY ;
 int KEY_FLAG_DEAD ;
 int KEY_FLAG_INVALIDATED ;
 int KEY_FLAG_REVOKED ;
 void* READ_ONCE (int ) ;
 scalar_t__ ktime_get_real_seconds () ;

int key_validate(const struct key *key)
{
 unsigned long flags = READ_ONCE(key->flags);
 time64_t expiry = READ_ONCE(key->expiry);

 if (flags & (1 << KEY_FLAG_INVALIDATED))
  return -ENOKEY;


 if (flags & ((1 << KEY_FLAG_REVOKED) |
       (1 << KEY_FLAG_DEAD)))
  return -EKEYREVOKED;


 if (expiry) {
  if (ktime_get_real_seconds() >= expiry)
   return -EKEYEXPIRED;
 }

 return 0;
}
