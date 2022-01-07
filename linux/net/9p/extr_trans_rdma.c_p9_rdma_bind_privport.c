
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ushort ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct p9_trans_rdma {int cm_id; } ;


 int AF_INET ;
 int EADDRINUSE ;
 int EINVAL ;
 int INADDR_ANY ;
 int P9_DEF_MAX_RESVPORT ;
 int P9_DEF_MIN_RESVPORT ;
 int htonl (int ) ;
 int htons (int ) ;
 int rdma_bind_addr (int ,struct sockaddr*) ;

__attribute__((used)) static int p9_rdma_bind_privport(struct p9_trans_rdma *rdma)
{
 struct sockaddr_in cl = {
  .sin_family = AF_INET,
  .sin_addr.s_addr = htonl(INADDR_ANY),
 };
 int port, err = -EINVAL;

 for (port = P9_DEF_MAX_RESVPORT; port >= P9_DEF_MIN_RESVPORT; port--) {
  cl.sin_port = htons((ushort)port);
  err = rdma_bind_addr(rdma->cm_id, (struct sockaddr *)&cl);
  if (err != -EADDRINUSE)
   break;
 }
 return err;
}
