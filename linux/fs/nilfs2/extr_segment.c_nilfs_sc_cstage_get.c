
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scnt; } ;
struct nilfs_sc_info {TYPE_1__ sc_stage; } ;



__attribute__((used)) static inline int nilfs_sc_cstage_get(struct nilfs_sc_info *sci)
{
 return sci->sc_stage.scnt;
}
