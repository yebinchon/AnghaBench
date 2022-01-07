
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct key {int description; TYPE_1__ payload; } ;


 size_t BIG_KEY_FILE_THRESHOLD ;
 size_t big_key_len ;
 scalar_t__ key_is_positive (struct key const*) ;
 int seq_printf (struct seq_file*,char*,size_t,char*) ;
 int seq_puts (struct seq_file*,int ) ;

void big_key_describe(const struct key *key, struct seq_file *m)
{
 size_t datalen = (size_t)key->payload.data[big_key_len];

 seq_puts(m, key->description);

 if (key_is_positive(key))
  seq_printf(m, ": %zu [%s]",
      datalen,
      datalen > BIG_KEY_FILE_THRESHOLD ? "file" : "buff");
}
