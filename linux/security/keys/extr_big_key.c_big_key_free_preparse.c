
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct key_preparsed_payload {scalar_t__ datalen; TYPE_1__ payload; } ;


 scalar_t__ BIG_KEY_FILE_THRESHOLD ;
 size_t big_key_data ;
 size_t big_key_path ;
 int kzfree (int ) ;
 int path_put (struct path*) ;

void big_key_free_preparse(struct key_preparsed_payload *prep)
{
 if (prep->datalen > BIG_KEY_FILE_THRESHOLD) {
  struct path *path = (struct path *)&prep->payload.data[big_key_path];

  path_put(path);
 }
 kzfree(prep->payload.data[big_key_data]);
}
