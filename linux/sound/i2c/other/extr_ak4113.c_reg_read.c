
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {unsigned char (* read ) (int ,unsigned char) ;int private_data; } ;


 unsigned char stub1 (int ,unsigned char) ;

__attribute__((used)) static inline unsigned char reg_read(struct ak4113 *ak4113, unsigned char reg)
{
 return ak4113->read(ak4113->private_data, reg);
}
