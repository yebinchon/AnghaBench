
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_preparsed_payload {int dummy; } ;
struct key {int keys; } ;


 int assoc_array_init (int *) ;
 int keyring_publish_name (struct key*) ;

__attribute__((used)) static int keyring_instantiate(struct key *keyring,
          struct key_preparsed_payload *prep)
{
 assoc_array_init(&keyring->keys);

 keyring_publish_name(keyring);
 return 0;
}
