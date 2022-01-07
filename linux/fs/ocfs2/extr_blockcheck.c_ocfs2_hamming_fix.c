
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int calc_code_bit (unsigned int,int *) ;
 int hweight32 (unsigned int) ;
 int ocfs2_clear_bit (unsigned int,void*) ;
 int ocfs2_set_bit (unsigned int,void*) ;
 scalar_t__ ocfs2_test_bit (unsigned int,void*) ;

void ocfs2_hamming_fix(void *data, unsigned int d, unsigned int nr,
         unsigned int fix)
{
 unsigned int i, b;

 BUG_ON(!d);





 if (hweight32(fix) == 1)
  return;





 if (fix >= calc_code_bit(nr + d, ((void*)0)))
  return;






 b = calc_code_bit(nr, ((void*)0));

 if (fix < b)
  return;

 for (i = 0; i < d; i++, b++)
 {

  while (hweight32(b) == 1)
   b++;
  if (b == fix)
  {
   if (ocfs2_test_bit(i, data))
    ocfs2_clear_bit(i, data);
   else
    ocfs2_set_bit(i, data);
   break;
  }
 }
}
