
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_seqid {int dummy; } ;


 int kfree (struct nfs_seqid*) ;
 int nfs_release_seqid (struct nfs_seqid*) ;

void nfs_free_seqid(struct nfs_seqid *seqid)
{
 nfs_release_seqid(seqid);
 kfree(seqid);
}
