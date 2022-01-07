
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int * dentry; int * mnt; } ;
struct TYPE_2__ {int ** data; } ;
struct key {TYPE_1__ payload; } ;


 size_t BIG_KEY_FILE_THRESHOLD ;
 size_t big_key_data ;
 size_t big_key_len ;
 size_t big_key_path ;
 int kzfree (int *) ;
 int path_put (struct path*) ;

void big_key_destroy(struct key *key)
{
 size_t datalen = (size_t)key->payload.data[big_key_len];

 if (datalen > BIG_KEY_FILE_THRESHOLD) {
  struct path *path = (struct path *)&key->payload.data[big_key_path];

  path_put(path);
  path->mnt = ((void*)0);
  path->dentry = ((void*)0);
 }
 kzfree(key->payload.data[big_key_data]);
 key->payload.data[big_key_data] = ((void*)0);
}
