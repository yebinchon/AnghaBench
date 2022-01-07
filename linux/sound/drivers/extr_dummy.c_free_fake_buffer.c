
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** dummy_page ;
 scalar_t__ fake_buffer ;
 int free_page (unsigned long) ;

__attribute__((used)) static void free_fake_buffer(void)
{
 if (fake_buffer) {
  int i;
  for (i = 0; i < 2; i++)
   if (dummy_page[i]) {
    free_page((unsigned long)dummy_page[i]);
    dummy_page[i] = ((void*)0);
   }
 }
}
