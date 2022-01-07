
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_MM_COUNTERS ;
 int memset (int*,int ,int) ;

__attribute__((used)) static inline void init_rss_vec(int *rss)
{
 memset(rss, 0, sizeof(int) * NR_MM_COUNTERS);
}
