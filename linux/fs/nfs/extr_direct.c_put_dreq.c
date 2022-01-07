
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int io_count; } ;


 int atomic_dec_and_test (int *) ;

__attribute__((used)) static inline int put_dreq(struct nfs_direct_req *dreq)
{
 return atomic_dec_and_test(&dreq->io_count);
}
