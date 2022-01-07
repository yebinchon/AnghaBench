
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_ATTRIBUTES (int ) ;
 int TREE_STRING_POINTER (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int current_function_decl ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int strncmp (int ,char*,int) ;
 scalar_t__ track_frame_size ;

__attribute__((used)) static bool stackleak_gate(void)
{
 tree section;

 section = lookup_attribute("section",
       DECL_ATTRIBUTES(current_function_decl));
 if (section && TREE_VALUE(section)) {
  section = TREE_VALUE(TREE_VALUE(section));

  if (!strncmp(TREE_STRING_POINTER(section), ".init.text", 10))
   return 0;
  if (!strncmp(TREE_STRING_POINTER(section), ".devinit.text", 13))
   return 0;
  if (!strncmp(TREE_STRING_POINTER(section), ".cpuinit.text", 13))
   return 0;
  if (!strncmp(TREE_STRING_POINTER(section), ".meminit.text", 13))
   return 0;
 }

 return track_frame_size >= 0;
}
