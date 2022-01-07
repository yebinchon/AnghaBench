
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_leaves_on_tree; } ;
struct key {char* description; TYPE_1__ keys; } ;


 scalar_t__ key_is_positive (struct key const*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void keyring_describe(const struct key *keyring, struct seq_file *m)
{
 if (keyring->description)
  seq_puts(m, keyring->description);
 else
  seq_puts(m, "[anon]");

 if (key_is_positive(keyring)) {
  if (keyring->keys.nr_leaves_on_tree != 0)
   seq_printf(m, ": %lu", keyring->keys.nr_leaves_on_tree);
  else
   seq_puts(m, ": empty");
 }
}
