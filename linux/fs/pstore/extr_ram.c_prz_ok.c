
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct persistent_ram_zone {int dummy; } ;


 scalar_t__ persistent_ram_ecc_string (struct persistent_ram_zone*,int *,int ) ;
 scalar_t__ persistent_ram_old_size (struct persistent_ram_zone*) ;

__attribute__((used)) static bool prz_ok(struct persistent_ram_zone *prz)
{
 return !!prz && !!(persistent_ram_old_size(prz) +
      persistent_ram_ecc_string(prz, ((void*)0), 0));
}
