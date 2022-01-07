
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u8 ;
typedef int __u16 ;


 int SKBTX_HW_TSTAMP ;
 int SKBTX_SCHED_TSTAMP ;
 int SKBTX_SW_TSTAMP ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_SCHED ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;

void __sock_tx_timestamp(__u16 tsflags, __u8 *tx_flags)
{
 u8 flags = *tx_flags;

 if (tsflags & SOF_TIMESTAMPING_TX_HARDWARE)
  flags |= SKBTX_HW_TSTAMP;

 if (tsflags & SOF_TIMESTAMPING_TX_SOFTWARE)
  flags |= SKBTX_SW_TSTAMP;

 if (tsflags & SOF_TIMESTAMPING_TX_SCHED)
  flags |= SKBTX_SCHED_TSTAMP;

 *tx_flags = flags;
}
