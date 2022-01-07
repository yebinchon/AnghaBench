
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rnd ;


 int get_random_bytes (unsigned int*,int) ;

__attribute__((used)) static void shuffle_array(int *arr, int n)
{
 unsigned int rnd;
 int i, j, x;

 for (i = n - 1; i > 0; i--) {
  get_random_bytes(&rnd, sizeof(rnd));


  j = rnd % i;


  x = arr[i];
  arr[i] = arr[j];
  arr[j] = x;
 }
}
