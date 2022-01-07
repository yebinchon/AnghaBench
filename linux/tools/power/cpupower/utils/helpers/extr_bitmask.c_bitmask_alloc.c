
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; scalar_t__ maskp; } ;


 scalar_t__ calloc (int ,int) ;
 int free (struct bitmask*) ;
 int longsperbits (unsigned int) ;
 struct bitmask* malloc (int) ;

struct bitmask *bitmask_alloc(unsigned int n)
{
 struct bitmask *bmp;

 bmp = malloc(sizeof(*bmp));
 if (bmp == 0)
  return 0;
 bmp->size = n;
 bmp->maskp = calloc(longsperbits(n), sizeof(unsigned long));
 if (bmp->maskp == 0) {
  free(bmp);
  return 0;
 }
 return bmp;
}
