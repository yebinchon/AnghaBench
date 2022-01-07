
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_connection {int splice_pending; int bytes_to_rcv; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int smc_rx_data_available_and_no_splice_pend(struct smc_connection *conn)
{
 return atomic_read(&conn->bytes_to_rcv) &&
        !atomic_read(&conn->splice_pending);
}
