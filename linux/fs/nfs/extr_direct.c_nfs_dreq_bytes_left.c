
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int bytes_left; } ;
typedef int ssize_t ;



ssize_t nfs_dreq_bytes_left(struct nfs_direct_req *dreq)
{
 return dreq->bytes_left;
}
