
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned int) ;

__attribute__((used)) static void nfs_show_nfs_version(struct seq_file *m,
  unsigned int version,
  unsigned int minorversion)
{
 seq_printf(m, ",vers=%u", version);
 if (version == 4)
  seq_printf(m, ".%u", minorversion);
}
