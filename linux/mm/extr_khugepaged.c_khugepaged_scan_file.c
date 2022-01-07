
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int pgoff_t ;


 int BUILD_BUG () ;

__attribute__((used)) static void khugepaged_scan_file(struct mm_struct *mm,
  struct file *file, pgoff_t start, struct page **hpage)
{
 BUILD_BUG();
}
