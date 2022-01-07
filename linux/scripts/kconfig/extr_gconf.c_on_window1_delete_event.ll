; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_window1_delete_event.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_on_window1_delete_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Warning !\00", align 1
@main_wnd = common dso_local global i32 0, align 4
@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_DIALOG_DESTROY_WITH_PARENT = common dso_local global i32 0, align 4
@GTK_STOCK_OK = common dso_local global i32 0, align 4
@GTK_STOCK_NO = common dso_local global i32 0, align 4
@GTK_STOCK_CANCEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\0ASave configuration ?\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_window1_delete_event(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @conf_get_changed()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load i32, i32* @main_wnd, align 4
  %17 = call i32 @GTK_WINDOW(i32 %16)
  %18 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %19 = load i32, i32* @GTK_DIALOG_DESTROY_WITH_PARENT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GTK_STOCK_OK, align 4
  %22 = load i32, i32* @GTK_STOCK_NO, align 4
  %23 = load i32, i32* @GTK_STOCK_CANCEL, align 4
  %24 = call i32* @gtk_dialog_new_with_buttons(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %21, i32 128, i32 %22, i32 129, i32 %23, i32 131, i32* null)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_4__* @GTK_DIALOG(i32* %25)
  %27 = call i32 @gtk_dialog_set_default_response(%struct.TYPE_4__* %26, i32 131)
  %28 = call i32* @gtk_label_new(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call %struct.TYPE_4__* @GTK_DIALOG(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GTK_CONTAINER(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @gtk_container_add(i32 %33, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @gtk_widget_show(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call %struct.TYPE_4__* @GTK_DIALOG(i32* %38)
  %40 = call i32 @gtk_dialog_run(%struct.TYPE_4__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %48 [
    i32 128, label %42
    i32 129, label %45
    i32 131, label %47
    i32 130, label %47
  ]

42:                                               ; preds = %15
  %43 = call i32 @on_save_activate(i32* null, i32* null)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %15
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %15, %15
  br label %48

48:                                               ; preds = %15, %47
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @gtk_widget_destroy(i32* %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %45, %42, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @conf_get_changed(...) #1

declare dso_local i32* @gtk_dialog_new_with_buttons(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @gtk_dialog_set_default_response(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.TYPE_4__* @GTK_DIALOG(i32*) #1

declare dso_local i32* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_dialog_run(%struct.TYPE_4__*) #1

declare dso_local i32 @on_save_activate(i32*, i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
