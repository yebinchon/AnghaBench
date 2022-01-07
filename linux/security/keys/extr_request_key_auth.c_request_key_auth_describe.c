
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct request_key_auth {int callout_len; int pid; } ;
struct key {char* description; } ;


 struct request_key_auth* dereference_key_rcu (struct key const*) ;
 scalar_t__ key_is_positive (struct key const*) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void request_key_auth_describe(const struct key *key,
          struct seq_file *m)
{
 struct request_key_auth *rka = dereference_key_rcu(key);

 if (!rka)
  return;

 seq_puts(m, "key:");
 seq_puts(m, key->description);
 if (key_is_positive(key))
  seq_printf(m, " pid:%d ci:%zu", rka->pid, rka->callout_len);
}
