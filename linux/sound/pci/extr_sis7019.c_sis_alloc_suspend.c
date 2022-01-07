
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis7019 {int * suspend_state; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SIS_SUSPEND_PAGES ;
 int kmalloc (int,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int sis_alloc_suspend(struct sis7019 *sis)
{
 int i;






 for (i = 0; i < SIS_SUSPEND_PAGES; i++) {
  sis->suspend_state[i] = kmalloc(4096, GFP_KERNEL);
  if (!sis->suspend_state[i])
   return -ENOMEM;
 }
 memset(sis->suspend_state[0], 0, 4096);

 return 0;
}
