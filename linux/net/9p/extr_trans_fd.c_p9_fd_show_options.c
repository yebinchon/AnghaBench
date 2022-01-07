
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {scalar_t__ rfd; scalar_t__ wfd; } ;
struct TYPE_6__ {scalar_t__ port; } ;
struct TYPE_5__ {TYPE_1__ fd; TYPE_3__ tcp; } ;
struct p9_client {TYPE_2__ trans_opts; int * trans_mod; } ;


 scalar_t__ P9_PORT ;
 int p9_fd_trans ;
 int p9_tcp_trans ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int p9_fd_show_options(struct seq_file *m, struct p9_client *clnt)
{
 if (clnt->trans_mod == &p9_tcp_trans) {
  if (clnt->trans_opts.tcp.port != P9_PORT)
   seq_printf(m, ",port=%u", clnt->trans_opts.tcp.port);
 } else if (clnt->trans_mod == &p9_fd_trans) {
  if (clnt->trans_opts.fd.rfd != ~0)
   seq_printf(m, ",rfd=%u", clnt->trans_opts.fd.rfd);
  if (clnt->trans_opts.fd.wfd != ~0)
   seq_printf(m, ",wfd=%u", clnt->trans_opts.fd.wfd);
 }
 return 0;
}
