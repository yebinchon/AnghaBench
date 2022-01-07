
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int rtnl_unlock () ;

__attribute__((used)) static void wireless_dev_seq_stop(struct seq_file *seq, void *v)
{
 rtnl_unlock();
}
