
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,...) ;
 double normalize_height (double) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_fbox(int Yslot, u64 start, u64 end, double height, const char *type, int fd, int err, int merges)
{
 double w = time2pixels(end) - time2pixels(start);
 height = normalize_height(height);

 if (!svgfile)
  return;

 fprintf(svgfile, "<g>\n");
 fprintf(svgfile, "<title>fd=%d error=%d merges=%d</title>\n", fd, err, merges);
 fprintf(svgfile, "<rect x=\"%.8f\" width=\"%.8f\" y=\"%.1f\" height=\"%.1f\" class=\"%s\"/>\n",
  time2pixels(start),
  w,
  Yslot * SLOT_MULT + SLOT_HEIGHT - SLOT_HEIGHT * height,
  SLOT_HEIGHT * height,
  type);
 fprintf(svgfile, "</g>\n");
}
