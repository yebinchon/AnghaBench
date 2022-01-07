
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;
struct kernel_lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;


 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline struct lb_addr cpu_to_lelb(struct kernel_lb_addr in)
{
 struct lb_addr out;

 out.logicalBlockNum = cpu_to_le32(in.logicalBlockNum);
 out.partitionReferenceNum = cpu_to_le16(in.partitionReferenceNum);

 return out;
}
