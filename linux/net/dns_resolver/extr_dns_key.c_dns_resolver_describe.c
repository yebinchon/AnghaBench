
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct key {int datalen; TYPE_1__ payload; int description; } ;


 int PTR_ERR (int ) ;
 size_t dns_key_error ;
 scalar_t__ key_is_positive (struct key const*) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,int ) ;

__attribute__((used)) static void dns_resolver_describe(const struct key *key, struct seq_file *m)
{
 seq_puts(m, key->description);
 if (key_is_positive(key)) {
  int err = PTR_ERR(key->payload.data[dns_key_error]);

  if (err)
   seq_printf(m, ": %d", err);
  else
   seq_printf(m, ": %u", key->datalen);
 }
}
