
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {void* needs_swap; } ;


 void* DSO_SWAP__NO ;
 void* DSO_SWAP__YES ;
 int EINVAL ;


 int pr_err (char*,unsigned char) ;

__attribute__((used)) static int dso__swap_init(struct dso *dso, unsigned char eidata)
{
 static unsigned int const endian = 1;

 dso->needs_swap = DSO_SWAP__NO;

 switch (eidata) {
 case 129:

  if (*(unsigned char const *)&endian != 1)
   dso->needs_swap = DSO_SWAP__YES;
  break;

 case 128:

  if (*(unsigned char const *)&endian != 0)
   dso->needs_swap = DSO_SWAP__YES;
  break;

 default:
  pr_err("unrecognized DSO data encoding %d\n", eidata);
  return -EINVAL;
 }

 return 0;
}
