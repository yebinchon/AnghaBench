
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct nfsd_net {int svc_export_cache; } ;
struct net {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs_exports_op ;
 int nfsd_net_id ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int exports_net_open(struct net *net, struct file *file)
{
 int err;
 struct seq_file *seq;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 err = seq_open(file, &nfs_exports_op);
 if (err)
  return err;

 seq = file->private_data;
 seq->private = nn->svc_export_cache;
 return 0;
}
