
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int NFSEXP_ALLFLAGS ;
 int NFSEXP_SECINFO_FLAGS ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int export_features_show(struct seq_file *m, void *v)
{
 seq_printf(m, "0x%x 0x%x\n", NFSEXP_ALLFLAGS, NFSEXP_SECINFO_FLAGS);
 return 0;
}
