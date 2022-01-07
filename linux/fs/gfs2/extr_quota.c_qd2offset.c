
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_quota_data {int dummy; } ;
struct gfs2_quota {int dummy; } ;


 int qd2index (struct gfs2_quota_data*) ;

__attribute__((used)) static u64 qd2offset(struct gfs2_quota_data *qd)
{
 u64 offset;

 offset = qd2index(qd);
 offset *= sizeof(struct gfs2_quota);

 return offset;
}
