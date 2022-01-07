
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileIdentDesc {scalar_t__ lengthFileIdent; int lengthOfImpUse; } ;


 unsigned int ALIGN (scalar_t__,int ) ;
 int UDF_NAME_PAD ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int udf_dir_entry_len(struct fileIdentDesc *cfi)
{
 return ALIGN(sizeof(struct fileIdentDesc) +
  le16_to_cpu(cfi->lengthOfImpUse) + cfi->lengthFileIdent,
  UDF_NAME_PAD);
}
