
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_connection {int out_kvec_left; int out_skip; size_t out_kvec_bytes; TYPE_1__* out_kvec; } ;
struct TYPE_2__ {size_t iov_len; void* iov_base; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int) ;

__attribute__((used)) static void con_out_kvec_add(struct ceph_connection *con,
    size_t size, void *data)
{
 int index = con->out_kvec_left;

 BUG_ON(con->out_skip);
 BUG_ON(index >= ARRAY_SIZE(con->out_kvec));

 con->out_kvec[index].iov_len = size;
 con->out_kvec[index].iov_base = data;
 con->out_kvec_left++;
 con->out_kvec_bytes += size;
}
