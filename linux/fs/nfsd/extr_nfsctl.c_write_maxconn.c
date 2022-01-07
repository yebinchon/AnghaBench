
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {unsigned int max_connections; } ;
struct file {int dummy; } ;
typedef int ssize_t ;


 int SIMPLE_TRANSACTION_LIMIT ;
 int get_uint (char**,unsigned int*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int netns (struct file*) ;
 int nfsd_net_id ;
 int scnprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t write_maxconn(struct file *file, char *buf, size_t size)
{
 char *mesg = buf;
 struct nfsd_net *nn = net_generic(netns(file), nfsd_net_id);
 unsigned int maxconn = nn->max_connections;

 if (size > 0) {
  int rv = get_uint(&mesg, &maxconn);

  if (rv)
   return rv;
  nn->max_connections = maxconn;
 }

 return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%u\n", maxconn);
}
