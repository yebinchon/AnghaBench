
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union key_payload {int dummy; } key_payload ;
struct key_type {int dummy; } ;
struct key {int dummy; } ;


 int EPERM ;

int restrict_link_reject(struct key *keyring,
    const struct key_type *type,
    const union key_payload *payload,
    struct key *restriction_key)
{
 return -EPERM;
}
