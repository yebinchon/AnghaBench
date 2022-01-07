
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct short_ad {void* extPosition; void* extLength; } ;


 void* le32_to_cpu (void*) ;

__attribute__((used)) static inline struct short_ad lesa_to_cpu(struct short_ad in)
{
 struct short_ad out;

 out.extLength = le32_to_cpu(in.extLength);
 out.extPosition = le32_to_cpu(in.extPosition);

 return out;
}
