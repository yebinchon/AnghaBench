
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ tagIdent; } ;
struct fileIdentDesc {int lengthFileIdent; scalar_t__ lengthOfImpUse; TYPE_1__ descTag; } ;


 int TAG_IDENT_FID ;
 int UDF_NAME_PAD ;
 scalar_t__ cpu_to_le16 (int ) ;
 int le16_to_cpu (scalar_t__) ;
 int udf_debug (char*,int,...) ;

struct fileIdentDesc *udf_get_fileident(void *buffer, int bufsize, int *offset)
{
 struct fileIdentDesc *fi;
 int lengthThisIdent;
 uint8_t *ptr;
 int padlen;

 if ((!buffer) || (!offset)) {
  udf_debug("invalidparms, buffer=%p, offset=%p\n",
     buffer, offset);
  return ((void*)0);
 }

 ptr = buffer;

 if ((*offset > 0) && (*offset < bufsize))
  ptr += *offset;
 fi = (struct fileIdentDesc *)ptr;
 if (fi->descTag.tagIdent != cpu_to_le16(TAG_IDENT_FID)) {
  udf_debug("0x%x != TAG_IDENT_FID\n",
     le16_to_cpu(fi->descTag.tagIdent));
  udf_debug("offset: %d sizeof: %lu bufsize: %d\n",
     *offset, (unsigned long)sizeof(struct fileIdentDesc),
     bufsize);
  return ((void*)0);
 }
 if ((*offset + sizeof(struct fileIdentDesc)) > bufsize)
  lengthThisIdent = sizeof(struct fileIdentDesc);
 else
  lengthThisIdent = sizeof(struct fileIdentDesc) +
   fi->lengthFileIdent + le16_to_cpu(fi->lengthOfImpUse);


 padlen = lengthThisIdent % UDF_NAME_PAD;
 if (padlen)
  lengthThisIdent += (UDF_NAME_PAD - padlen);
 *offset = *offset + lengthThisIdent;

 return fi;
}
