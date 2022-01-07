
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union acpi_object {int dummy; } acpi_object ;
struct TYPE_6__ {size_t length; void* pointer; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_7__ {TYPE_2__ buffer; TYPE_1__ package; } ;


 int ACPI_TYPE_BUFFER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_3__* kmalloc (int,int ) ;
 int memcpy (void*,void*,size_t) ;
 int memset (void*,int ,size_t) ;
 TYPE_3__* result ;

__attribute__((used)) static int setup_result(void *buf, size_t size)
{
 result = kmalloc(sizeof(union acpi_object) + size, GFP_KERNEL);
 if (!result)
  return -ENOMEM;
 result->package.type = ACPI_TYPE_BUFFER,
 result->buffer.pointer = (void *) (result + 1);
 result->buffer.length = size;
 memcpy(result->buffer.pointer, buf, size);
 memset(buf, 0, size);
 return 0;
}
