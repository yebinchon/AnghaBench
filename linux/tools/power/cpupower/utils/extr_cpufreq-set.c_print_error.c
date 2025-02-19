
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int printf (char*) ;

__attribute__((used)) static void print_error(void)
{
 printf(_("Error setting new values. Common errors:\n"
   "- Do you have proper administration rights? (super-user?)\n"
   "- Is the governor you requested available and modprobed?\n"
   "- Trying to set an invalid policy?\n"
   "- Trying to set a specific frequency, but userspace governor is not available,\n"
   "   for example because of hardware which cannot be set to a specific frequency\n"
   "   or because the userspace governor isn't loaded?\n"));
}
