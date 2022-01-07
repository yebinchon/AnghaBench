
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LIH_SIZE ;

__attribute__((used)) static inline u8 LIH_INDEX(const u8 ctr)
{
 return LIH_SIZE - 1 - (ctr % LIH_SIZE);
}
