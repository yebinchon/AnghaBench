
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_nsegments; } ;
struct nilfs_segments_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
nilfs_segments_segments_number_show(struct nilfs_segments_attr *attr,
         struct the_nilfs *nilfs,
         char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%lu\n", nilfs->ns_nsegments);
}
