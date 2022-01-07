
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;
struct kernel_lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline struct kernel_lb_addr lelb_to_cpu(struct lb_addr in)
{
 struct kernel_lb_addr out;

 out.logicalBlockNum = le32_to_cpu(in.logicalBlockNum);
 out.partitionReferenceNum = le16_to_cpu(in.partitionReferenceNum);

 return out;
}
