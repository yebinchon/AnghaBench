; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_introduction1_activate.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_introduction1_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [740 x i8] c"Welcome to gkc, the GTK+ graphical configuration tool\0AFor each option, a blank box indicates the feature is disabled, a\0Acheck indicates it is enabled, and a dot indicates that it is to\0Abe compiled as a module.  Clicking on the box will cycle through the three states.\0A\0AIf you do not see an option (e.g., a device driver) that you\0Abelieve should be present, try turning on Show All Options\0Aunder the Options menu.\0AAlthough there is no cross reference yet to help you figure out\0Awhat other options must be enabled to support the option you\0Aare interested in, you can still view the help of a grayed-out\0Aoption.\0A\0AToggling Show Debug Info under the Options menu will show \0Athe dependencies, which you can then match by examining other options.\00", align 1
@main_wnd = common dso_local global i32 0, align 4
@GTK_DIALOG_DESTROY_WITH_PARENT = common dso_local global i32 0, align 4
@GTK_MESSAGE_INFO = common dso_local global i32 0, align 4
@GTK_BUTTONS_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@gtk_widget_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_introduction1_activate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([740 x i8], [740 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
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
