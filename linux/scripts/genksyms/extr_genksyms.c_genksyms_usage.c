
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stderr ;

__attribute__((used)) static void genksyms_usage(void)
{
 fputs("Usage:\n" "genksyms [-adDTwqhVR] > /path/to/.tmp_obj.ver\n" "\n"
       "  -s                    Select symbol prefix\n"
       "  -d                    Increment the debug level (repeatable)\n"
       "  -D                    Dump expanded symbol defs (for debugging only)\n"
       "  -r file               Read reference symbols from a file\n"
       "  -T file               Dump expanded types into file\n"
       "  -p                    Preserve reference modversions or fail\n"
       "  -w                    Enable warnings\n"
       "  -q                    Disable warnings (default)\n"
       "  -h                    Print this message\n"
       "  -V                    Print the release version\n"
       "  -R                    Emit section relative symbol CRCs\n"

       , stderr);
}
