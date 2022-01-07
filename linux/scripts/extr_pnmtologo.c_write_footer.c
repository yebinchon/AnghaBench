
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t LINUX_LOGO_CLUT224 ;
 int fclose (int ) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int logo_clutsize ;
 int logo_height ;
 size_t logo_type ;
 char** logo_types ;
 int logo_width ;
 char* logoname ;
 int out ;
 scalar_t__ outputname ;

__attribute__((used)) static void write_footer(void)
{
    fputs("\n};\n\n", out);
    fprintf(out, "const struct linux_logo %s __initconst = {\n", logoname);
    fprintf(out, "\t.type\t\t= %s,\n", logo_types[logo_type]);
    fprintf(out, "\t.width\t\t= %d,\n", logo_width);
    fprintf(out, "\t.height\t\t= %d,\n", logo_height);
    if (logo_type == LINUX_LOGO_CLUT224) {
 fprintf(out, "\t.clutsize\t= %d,\n", logo_clutsize);
 fprintf(out, "\t.clut\t\t= %s_clut,\n", logoname);
    }
    fprintf(out, "\t.data\t\t= %s_data\n", logoname);
    fputs("};\n\n", out);


    if (outputname)
 fclose(out);
}
