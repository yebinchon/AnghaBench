
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int console_unlock () ;

__attribute__((used)) static void c_stop(struct seq_file *m, void *v)
{
 console_unlock();
}
