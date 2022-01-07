
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* errstr; int errno; } ;


 TYPE_1__* wavefront_errors ;

__attribute__((used)) static const char *
wavefront_errorstr (int errnum)

{
 int i;

 for (i = 0; wavefront_errors[i].errstr; i++) {
  if (wavefront_errors[i].errno == errnum) {
   return wavefront_errors[i].errstr;
  }
 }

 return "Unknown WaveFront error";
}
