
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mld2_query {int dummy; } ;
struct inet6_dev {int mc_qri; } ;


 int mldv2_mrc (struct mld2_query const*) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static void mld_update_qri(struct inet6_dev *idev,
      const struct mld2_query *mlh2)
{




 idev->mc_qri = msecs_to_jiffies(mldv2_mrc(mlh2));
}
