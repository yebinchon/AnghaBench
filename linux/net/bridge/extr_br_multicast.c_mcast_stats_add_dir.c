
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 size_t BR_MCAST_DIR_RX ;
 size_t BR_MCAST_DIR_TX ;

__attribute__((used)) static void mcast_stats_add_dir(u64 *dst, u64 *src)
{
 dst[BR_MCAST_DIR_RX] += src[BR_MCAST_DIR_RX];
 dst[BR_MCAST_DIR_TX] += src[BR_MCAST_DIR_TX];
}
