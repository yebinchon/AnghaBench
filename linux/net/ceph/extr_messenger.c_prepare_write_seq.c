
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int out_temp_ack; int in_seq_acked; int in_seq; } ;


 int CON_FLAG_WRITE_PENDING ;
 int con_flag_set (struct ceph_connection*,int ) ;
 int con_out_kvec_add (struct ceph_connection*,int,int *) ;
 int con_out_kvec_reset (struct ceph_connection*) ;
 int cpu_to_le64 (int ) ;
 int dout (char*,struct ceph_connection*,int ,int ) ;

__attribute__((used)) static void prepare_write_seq(struct ceph_connection *con)
{
 dout("prepare_write_seq %p %llu -> %llu\n", con,
      con->in_seq_acked, con->in_seq);
 con->in_seq_acked = con->in_seq;

 con_out_kvec_reset(con);

 con->out_temp_ack = cpu_to_le64(con->in_seq_acked);
 con_out_kvec_add(con, sizeof (con->out_temp_ack),
    &con->out_temp_ack);

 con_flag_set(con, CON_FLAG_WRITE_PENDING);
}
