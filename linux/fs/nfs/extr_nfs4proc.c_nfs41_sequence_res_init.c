
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_sequence_res {int sr_status; scalar_t__ sr_status_flags; int sr_timestamp; } ;


 int jiffies ;

__attribute__((used)) static void nfs41_sequence_res_init(struct nfs4_sequence_res *res)
{
 res->sr_timestamp = jiffies;
 res->sr_status_flags = 0;
 res->sr_status = 1;
}
