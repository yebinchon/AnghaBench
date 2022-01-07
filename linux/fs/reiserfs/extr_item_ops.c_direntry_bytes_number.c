
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static int direntry_bytes_number(struct item_head *ih, int block_size)
{
 reiserfs_warning(((void*)0), "vs-16090",
    "bytes number is asked for direntry");
 return 0;
}
