
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;

__attribute__((used)) static void *jbd2_seq_info_start(struct seq_file *seq, loff_t *pos)
{
 return *pos ? ((void*)0) : SEQ_START_TOKEN;
}
