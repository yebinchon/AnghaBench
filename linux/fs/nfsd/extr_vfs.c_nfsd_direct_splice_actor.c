
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_desc {int dummy; } ;
struct pipe_inode_info {int dummy; } ;


 int __splice_from_pipe (struct pipe_inode_info*,struct splice_desc*,int ) ;
 int nfsd_splice_actor ;

__attribute__((used)) static int nfsd_direct_splice_actor(struct pipe_inode_info *pipe,
        struct splice_desc *sd)
{
 return __splice_from_pipe(pipe, sd, nfsd_splice_actor);
}
