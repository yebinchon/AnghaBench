
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;



__attribute__((used)) static bool zone_allows_reclaim(struct zone *local_zone, struct zone *zone)
{
 return 1;
}
