
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; } ;


 unsigned long avg_stats (int *) ;
 int printf (char*,char*,unsigned long,int ,int) ;
 int rel_stddev_stats (double,unsigned long) ;
 TYPE_1__ runtime ;
 int silent ;
 double stddev_stats (int *) ;
 int throughput_stats ;

__attribute__((used)) static void print_summary(void)
{
 unsigned long avg = avg_stats(&throughput_stats);
 double stddev = stddev_stats(&throughput_stats);

 printf("%sAveraged %ld operations/sec (+- %.2f%%), total secs = %d\n",
        !silent ? "\n" : "", avg, rel_stddev_stats(stddev, avg),
        (int) runtime.tv_sec);
}
