
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int hwpoison_dir ;

__attribute__((used)) static void pfn_inject_exit(void)
{
 debugfs_remove_recursive(hwpoison_dir);
}
