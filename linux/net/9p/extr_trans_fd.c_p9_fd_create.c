
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p9_fd_opts {int wfd; int rfd; } ;
struct TYPE_4__ {int wfd; int rfd; } ;
struct TYPE_3__ {TYPE_2__ fd; } ;
struct p9_client {TYPE_1__ trans_opts; } ;


 int ENOPROTOOPT ;
 int p9_conn_create (struct p9_client*) ;
 int p9_fd_open (struct p9_client*,int ,int ) ;
 int parse_opts (char*,struct p9_fd_opts*) ;
 int pr_err (char*) ;

__attribute__((used)) static int
p9_fd_create(struct p9_client *client, const char *addr, char *args)
{
 int err;
 struct p9_fd_opts opts;

 parse_opts(args, &opts);
 client->trans_opts.fd.rfd = opts.rfd;
 client->trans_opts.fd.wfd = opts.wfd;

 if (opts.rfd == ~0 || opts.wfd == ~0) {
  pr_err("Insufficient options for proto=fd\n");
  return -ENOPROTOOPT;
 }

 err = p9_fd_open(client, opts.rfd, opts.wfd);
 if (err < 0)
  return err;

 p9_conn_create(client);

 return 0;
}
