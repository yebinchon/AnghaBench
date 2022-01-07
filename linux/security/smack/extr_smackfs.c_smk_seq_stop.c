
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int rcu_read_unlock () ;

__attribute__((used)) static void smk_seq_stop(struct seq_file *s, void *v)
{
 rcu_read_unlock();
}
