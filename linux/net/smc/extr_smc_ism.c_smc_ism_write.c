
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_dev {TYPE_1__* ops; } ;
struct smc_ism_position {int offset; int signal; int index; int token; } ;
struct TYPE_2__ {int (* move_data ) (struct smcd_dev*,int ,int ,int ,int ,void*,size_t) ;} ;


 int stub1 (struct smcd_dev*,int ,int ,int ,int ,void*,size_t) ;

int smc_ism_write(struct smcd_dev *smcd, const struct smc_ism_position *pos,
    void *data, size_t len)
{
 int rc;

 rc = smcd->ops->move_data(smcd, pos->token, pos->index, pos->signal,
      pos->offset, data, len);

 return rc < 0 ? rc : 0;
}
