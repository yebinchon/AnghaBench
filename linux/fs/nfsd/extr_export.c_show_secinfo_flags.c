
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int NFSEXP_SECINFO_FLAGS ;
 int seq_printf (struct seq_file*,char*) ;
 int show_expflags (struct seq_file*,int,int ) ;

__attribute__((used)) static void show_secinfo_flags(struct seq_file *m, int flags)
{
 seq_printf(m, ",");
 show_expflags(m, flags, NFSEXP_SECINFO_FLAGS);
}
