
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int pr_info (char*) ;

__attribute__((used)) static void check_pinning_enforcement(struct super_block *mnt_sb)
{
 pr_info("load pinning engaged.\n");
}
