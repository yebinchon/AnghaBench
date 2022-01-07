
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct p9_client {int msize; int proto_version; TYPE_1__* trans_mod; } ;
struct TYPE_2__ {int name; int (* show_options ) (struct seq_file*,struct p9_client*) ;} ;





 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct seq_file*,struct p9_client*) ;

int p9_show_client_options(struct seq_file *m, struct p9_client *clnt)
{
 if (clnt->msize != 8192)
  seq_printf(m, ",msize=%u", clnt->msize);
 seq_printf(m, ",trans=%s", clnt->trans_mod->name);

 switch (clnt->proto_version) {
 case 128:
  seq_puts(m, ",noextend");
  break;
 case 129:
  seq_puts(m, ",version=9p2000.u");
  break;
 case 130:

  break;
 }

 if (clnt->trans_mod->show_options)
  return clnt->trans_mod->show_options(m, clnt);
 return 0;
}
