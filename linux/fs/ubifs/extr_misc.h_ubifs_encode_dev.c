
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_dev_desc {int new; } ;
typedef int dev_t ;


 int cpu_to_le32 (int ) ;
 int new_encode_dev (int ) ;

__attribute__((used)) static inline int ubifs_encode_dev(union ubifs_dev_desc *dev, dev_t rdev)
{
 dev->new = cpu_to_le32(new_encode_dev(rdev));
 return sizeof(dev->new);
}
