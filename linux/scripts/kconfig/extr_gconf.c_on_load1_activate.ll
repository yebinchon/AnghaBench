; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_load1_activate.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_load1_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Load file...\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@load_filename = common dso_local global i32 0, align 4
@gtk_widget_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_load1_activate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32* @gtk_file_selection_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call %struct.TYPE_2__* @GTK_FILE_SELECTION(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @GTK_OBJECT(i32 %10)
  %12 = load i32, i32* @load_filename, align 4
  %13 = call i32 @G_CALLBACK(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 @g_signal_connect(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_2__* @GTK_FILE_SELECTION(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GTK_OBJECT(i32 %20)
  %22 = load i32, i32* @gtk_widget_destroy, align 4
  %23 = call i32 @G_CALLBACK(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = ptrtoint i32* %24 to i32
  %26 = call i32 @g_signal_connect_swapped(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_2__* @GTK_FILE_SELECTION(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GTK_OBJECT(i32 %30)
  %32 = load i32, i32* @gtk_widget_destroy, align 4
  %33 = call i32 @G_CALLBACK(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @g_signal_connect_swapped(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @gtk_widget_show(i32* %37)
  ret void
}

declare dso_local i32* @gtk_file_selection_new(i8*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, i32) #1

declare dso_local i32 @GTK_OBJECT(i32) #1

declare dso_local %struct.TYPE_2__* @GTK_FILE_SELECTION(i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @g_signal_connect_swapped(i32, i8*, i32, i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
