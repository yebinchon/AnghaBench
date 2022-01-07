
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {scalar_t__* data; } ;
struct key {TYPE_1__ payload; } ;


 size_t BIG_KEY_FILE_THRESHOLD ;
 size_t big_key_len ;
 size_t big_key_path ;
 scalar_t__ key_is_positive (struct key*) ;
 int key_payload_reserve (struct key*,int ) ;
 int vfs_truncate (struct path*,int ) ;

void big_key_revoke(struct key *key)
{
 struct path *path = (struct path *)&key->payload.data[big_key_path];


 key_payload_reserve(key, 0);
 if (key_is_positive(key) &&
     (size_t)key->payload.data[big_key_len] > BIG_KEY_FILE_THRESHOLD)
  vfs_truncate(path, 0);
}
