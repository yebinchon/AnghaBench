
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskstats {char* ac_comm; scalar_t__ cancelled_write_bytes; scalar_t__ write_bytes; scalar_t__ read_bytes; } ;


 int printf (char*,char*,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static void print_ioacct(struct taskstats *t)
{
 printf("%s: read=%llu, write=%llu, cancelled_write=%llu\n",
  t->ac_comm,
  (unsigned long long)t->read_bytes,
  (unsigned long long)t->write_bytes,
  (unsigned long long)t->cancelled_write_bytes);
}
