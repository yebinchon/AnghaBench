
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int nodename; } ;


 int seq_printf (struct seq_file*,char*,...) ;
 TYPE_1__* utsname () ;

__attribute__((used)) static int
rpc_dummy_info_show(struct seq_file *m, void *v)
{
 seq_printf(m, "RPC server: %s\n", utsname()->nodename);
 seq_printf(m, "service: foo (1) version 0\n");
 seq_printf(m, "address: 127.0.0.1\n");
 seq_printf(m, "protocol: tcp\n");
 seq_printf(m, "port: 0\n");
 return 0;
}
