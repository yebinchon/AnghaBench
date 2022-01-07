
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; int s_blocksize; int s_dev; int s_id; int s_magic; } ;
struct nfs_server {int maxfilesize; int wsize; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 int NFS_SUPER_MAGIC ;
 int nfs_block_bits (int ,int *) ;
 int nfs_super_set_maxbytes (struct super_block*,int ) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static void nfs_initialise_sb(struct super_block *sb)
{
 struct nfs_server *server = NFS_SB(sb);

 sb->s_magic = NFS_SUPER_MAGIC;


 snprintf(sb->s_id, sizeof(sb->s_id),
   "%u:%u", MAJOR(sb->s_dev), MINOR(sb->s_dev));

 if (sb->s_blocksize == 0)
  sb->s_blocksize = nfs_block_bits(server->wsize,
       &sb->s_blocksize_bits);

 nfs_super_set_maxbytes(sb, server->maxfilesize);
}
