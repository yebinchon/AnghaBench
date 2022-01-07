
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {struct key* data; } ;
struct key {int dummy; } ;


 int key_put (struct key*) ;

__attribute__((used)) static void umh_keys_cleanup(struct subprocess_info *info)
{
 struct key *keyring = info->data;
 key_put(keyring);
}
