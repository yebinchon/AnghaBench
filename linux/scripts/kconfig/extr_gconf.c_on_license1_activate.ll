; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_license1_activate.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_license1_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [152 x i8] c"gkc is released under the terms of the GNU GPL v2.\0AFor more information, please see the source code or\0Avisit http://www.fsf.org/licenses/licenses.html\0A\00", align 1
@main_wnd = common dso_local global i32 0, align 4
@GTK_DIALOG_DESTROY_WITH_PARENT = common dso_local global i32 0, align 4
@GTK_MESSAGE_INFO = common dso_local global i32 0, align 4
@GTK_BUTTONS_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@gtk_widget_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_license1_activate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @main_wnd, align 4
  %8 = call i32 @GTK_WINDOW(i32 %7)
  %9 = load i32, i32* @GTK_DIALOG_DESTROY_WITH_PARENT, align 4
  %10 = load i32, i32* @GTK_MESSAGE_INFO, align 4
  %11 = load i32, i32* @GTK_BUTTONS_CLOSE, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @gtk_message_dialog_new(i32 %8, i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GTK_OBJECT(i32* %14)
  %16 = load i32, i32* @gtk_widget_destroy, align 4
  %17 = call i32 @G_CALLBACK(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @GTK_OBJECT(i32* %18)
  %20 = call i32 @g_signal_connect_swapped(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @gtk_widget_show_all(i32* %21)
  ret void
}

declare dso_local i32* @gtk_message_dialog_new(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @g_signal_connect_swapped(i32, i8*, i32, i32) #1

declare dso_local i32 @GTK_OBJECT(i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
