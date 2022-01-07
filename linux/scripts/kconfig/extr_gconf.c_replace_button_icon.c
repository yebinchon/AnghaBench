
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_3__ {int * bg; } ;
typedef int GtkWidget ;
typedef int GtkToolButton ;
typedef TYPE_1__ GtkStyle ;
typedef int GladeXML ;
typedef int GdkPixmap ;
typedef int GdkDrawable ;
typedef int GdkBitmap ;


 size_t GTK_STATE_NORMAL ;
 int * GTK_TOOL_BUTTON (int ) ;
 int * gdk_pixmap_create_from_xpm_d (int *,int **,int *,int **) ;
 int glade_xml_get_widget (int *,int *) ;
 int * gtk_image_new_from_pixmap (int *,int *) ;
 int gtk_tool_button_set_icon_widget (int *,int *) ;
 int gtk_widget_show (int *) ;

__attribute__((used)) static void replace_button_icon(GladeXML *xml, GdkDrawable *window,
    GtkStyle *style, gchar *btn_name, gchar **xpm)
{
 GdkPixmap *pixmap;
 GdkBitmap *mask;
 GtkToolButton *button;
 GtkWidget *image;

 pixmap = gdk_pixmap_create_from_xpm_d(window, &mask,
           &style->bg[GTK_STATE_NORMAL],
           xpm);

 button = GTK_TOOL_BUTTON(glade_xml_get_widget(xml, btn_name));
 image = gtk_image_new_from_pixmap(pixmap, mask);
 gtk_widget_show(image);
 gtk_tool_button_set_icon_widget(button, image);
}
