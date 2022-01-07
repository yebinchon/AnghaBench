
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct nfs4_client* private; } ;
struct nfs4_client {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int drop_client (struct nfs4_client*) ;

__attribute__((used)) static int client_opens_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;
 struct nfs4_client *clp = m->private;


 drop_client(clp);
 return 0;
}
