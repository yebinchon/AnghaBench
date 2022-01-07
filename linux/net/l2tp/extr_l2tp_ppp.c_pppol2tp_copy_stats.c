
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_ioc_stats {void* rx_errors; void* rx_oos_packets; void* rx_seq_discards; void* rx_bytes; void* rx_packets; void* tx_errors; void* tx_bytes; void* tx_packets; } ;
struct l2tp_stats {int rx_errors; int rx_oos_packets; int rx_seq_discards; int rx_bytes; int rx_packets; int tx_errors; int tx_bytes; int tx_packets; } ;


 void* atomic_long_read (int *) ;
 int memset (struct pppol2tp_ioc_stats*,int ,int) ;

__attribute__((used)) static void pppol2tp_copy_stats(struct pppol2tp_ioc_stats *dest,
    const struct l2tp_stats *stats)
{
 memset(dest, 0, sizeof(*dest));

 dest->tx_packets = atomic_long_read(&stats->tx_packets);
 dest->tx_bytes = atomic_long_read(&stats->tx_bytes);
 dest->tx_errors = atomic_long_read(&stats->tx_errors);
 dest->rx_packets = atomic_long_read(&stats->rx_packets);
 dest->rx_bytes = atomic_long_read(&stats->rx_bytes);
 dest->rx_seq_discards = atomic_long_read(&stats->rx_seq_discards);
 dest->rx_oos_packets = atomic_long_read(&stats->rx_oos_packets);
 dest->rx_errors = atomic_long_read(&stats->rx_errors);
}
