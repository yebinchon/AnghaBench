
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_extent {int count; int block; } ;


 int EXTENT ;
 int be16_to_cpu (int ) ;
 int hfs_dbg (int ,char*) ;
 int hfs_dbg_cont (int ,char*,...) ;

__attribute__((used)) static void hfs_dump_extent(struct hfs_extent *extent)
{
 int i;

 hfs_dbg(EXTENT, "   ");
 for (i = 0; i < 3; i++)
  hfs_dbg_cont(EXTENT, " %u:%u",
        be16_to_cpu(extent[i].block),
        be16_to_cpu(extent[i].count));
 hfs_dbg_cont(EXTENT, "\n");
}
