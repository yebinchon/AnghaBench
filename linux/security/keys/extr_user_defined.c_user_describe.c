
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct key {int datalen; int description; } ;


 scalar_t__ key_is_positive (struct key const*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,int ) ;

void user_describe(const struct key *key, struct seq_file *m)
{
 seq_puts(m, key->description);
 if (key_is_positive(key))
  seq_printf(m, ": %u", key->datalen);
}
