
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int status; } ;


 unsigned long IPS_UNCHANGEABLE_MASK ;
 unsigned int __IPS_MAX_BIT ;
 int clear_bit (unsigned int,int *) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static void
__ctnetlink_change_status(struct nf_conn *ct, unsigned long on,
     unsigned long off)
{
 unsigned int bit;


 on &= ~IPS_UNCHANGEABLE_MASK;
 off &= ~IPS_UNCHANGEABLE_MASK;

 for (bit = 0; bit < __IPS_MAX_BIT; bit++) {
  if (on & (1 << bit))
   set_bit(bit, &ct->status);
  else if (off & (1 << bit))
   clear_bit(bit, &ct->status);
 }
}
