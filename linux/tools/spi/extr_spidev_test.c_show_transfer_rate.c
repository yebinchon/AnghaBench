
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _read_count ;
 int _write_count ;
 double interval ;
 int printf (char*,double,double) ;

__attribute__((used)) static void show_transfer_rate(void)
{
 static uint64_t prev_read_count, prev_write_count;
 double rx_rate, tx_rate;

 rx_rate = ((_read_count - prev_read_count) * 8) / (interval*1000.0);
 tx_rate = ((_write_count - prev_write_count) * 8) / (interval*1000.0);

 printf("rate: tx %.1fkbps, rx %.1fkbps\n", rx_rate, tx_rate);

 prev_read_count = _read_count;
 prev_write_count = _write_count;
}
