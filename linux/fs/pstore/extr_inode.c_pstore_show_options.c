
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ PSTORE_DEFAULT_KMSG_BYTES ;
 scalar_t__ kmsg_bytes ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int pstore_show_options(struct seq_file *m, struct dentry *root)
{
 if (kmsg_bytes != PSTORE_DEFAULT_KMSG_BYTES)
  seq_printf(m, ",kmsg_bytes=%lu", kmsg_bytes);
 return 0;
}
