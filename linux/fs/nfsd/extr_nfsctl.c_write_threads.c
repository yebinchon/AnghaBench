
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct file {int f_cred; } ;
typedef int ssize_t ;


 int EINVAL ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int get_int (char**,int*) ;
 struct net* netns (struct file*) ;
 int nfsd_nrthreads (struct net*) ;
 int nfsd_svc (int,struct net*,int ) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t write_threads(struct file *file, char *buf, size_t size)
{
 char *mesg = buf;
 int rv;
 struct net *net = netns(file);

 if (size > 0) {
  int newthreads;
  rv = get_int(&mesg, &newthreads);
  if (rv)
   return rv;
  if (newthreads < 0)
   return -EINVAL;
  rv = nfsd_svc(newthreads, net, file->f_cred);
  if (rv < 0)
   return rv;
 } else
  rv = nfsd_nrthreads(net);

 return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%d\n", rv);
}
