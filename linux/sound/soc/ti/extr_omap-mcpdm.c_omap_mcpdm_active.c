
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcpdm {int dummy; } ;


 int MCPDM_PDM_DN_MASK ;
 int MCPDM_PDM_UP_MASK ;
 int MCPDM_REG_CTRL ;
 int omap_mcpdm_read (struct omap_mcpdm*,int ) ;

__attribute__((used)) static inline int omap_mcpdm_active(struct omap_mcpdm *mcpdm)
{
 return omap_mcpdm_read(mcpdm, MCPDM_REG_CTRL) &
     (MCPDM_PDM_DN_MASK | MCPDM_PDM_UP_MASK);
}
