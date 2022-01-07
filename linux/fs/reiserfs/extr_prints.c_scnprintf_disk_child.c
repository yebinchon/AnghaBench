
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_child {int dummy; } ;


 int dc_block_number (struct disk_child*) ;
 int dc_size (struct disk_child*) ;
 int scnprintf (char*,size_t,char*,int ,int ) ;

__attribute__((used)) static int scnprintf_disk_child(char *buf, size_t size, struct disk_child *dc)
{
 return scnprintf(buf, size, "[dc_number=%d, dc_size=%u]",
    dc_block_number(dc), dc_size(dc));
}
