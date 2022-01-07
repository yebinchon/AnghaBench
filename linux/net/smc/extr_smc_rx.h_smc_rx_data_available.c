
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_connection {int bytes_to_rcv; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int smc_rx_data_available(struct smc_connection *conn)
{
 return atomic_read(&conn->bytes_to_rcv);
}
