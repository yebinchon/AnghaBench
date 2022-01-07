
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {scalar_t__ snoop; } ;


 int CONFIG_X86 ;
 int IS_ENABLED (int ) ;

__attribute__((used)) static inline bool azx_snoop(struct azx *chip)
{
 return !IS_ENABLED(CONFIG_X86) || chip->snoop;
}
