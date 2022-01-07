; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.gui.c_set_normal_colors.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.gui.c_set_normal_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NORMAL = common dso_local global i32 0, align 4
@MAIN_HEADING = common dso_local global i32 0, align 4
@COLOR_MAGENTA = common dso_local global i32 0, align 4
@MAIN_MENU_FORE = common dso_local global i32 0, align 4
@MAIN_MENU_BACK = common dso_local global i32 0, align 4
@MAIN_MENU_GREY = common dso_local global i32 0, align 4
@MAIN_MENU_HEADING = common dso_local global i32 0, align 4
@COLOR_GREEN = common dso_local global i32 0, align 4
@MAIN_MENU_BOX = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@SCROLLWIN_TEXT = common dso_local global i32 0, align 4
@SCROLLWIN_HEADING = common dso_local global i32 0, align 4
@SCROLLWIN_BOX = common dso_local global i32 0, align 4
@DIALOG_TEXT = common dso_local global i32 0, align 4
@DIALOG_BOX = common dso_local global i32 0, align 4
@DIALOG_MENU_BACK = common dso_local global i32 0, align 4
@DIALOG_MENU_FORE = common dso_local global i32 0, align 4
@COLOR_RED = common dso_local global i32 0, align 4
@INPUT_BOX = common dso_local global i32 0, align 4
@INPUT_HEADING = common dso_local global i32 0, align 4
@INPUT_TEXT = common dso_local global i32 0, align 4
@INPUT_FIELD = common dso_local global i32 0, align 4
@FUNCTION_HIGHLIGHT = common dso_local global i32 0, align 4
@FUNCTION_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_normal_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_normal_colors() #0 {
  %1 = load i32, i32* @NORMAL, align 4
  %2 = call i32 @init_pair(i32 %1, i32 -1, i32 -1)
  %3 = load i32, i32* @MAIN_HEADING, align 4
  %4 = load i32, i32* @COLOR_MAGENTA, align 4
  %5 = call i32 @init_pair(i32 %3, i32 %4, i32 -1)
  %6 = load i32, i32* @MAIN_MENU_FORE, align 4
  %7 = call i32 @init_pair(i32 %6, i32 -1, i32 -1)
  %8 = load i32, i32* @MAIN_MENU_BACK, align 4
  %9 = call i32 @init_pair(i32 %8, i32 -1, i32 -1)
  %10 = load i32, i32* @MAIN_MENU_GREY, align 4
  %11 = call i32 @init_pair(i32 %10, i32 -1, i32 -1)
  %12 = load i32, i32* @MAIN_MENU_HEADING, align 4
  %13 = load i32, i32* @COLOR_GREEN, align 4
  %14 = call i32 @init_pair(i32 %12, i32 %13, i32 -1)
  %15 = load i32, i32* @MAIN_MENU_BOX, align 4
  %16 = load i32, i32* @COLOR_YELLOW, align 4
  %17 = call i32 @init_pair(i32 %15, i32 %16, i32 -1)
  %18 = load i32, i32* @SCROLLWIN_TEXT, align 4
  %19 = call i32 @init_pair(i32 %18, i32 -1, i32 -1)
  %20 = load i32, i32* @SCROLLWIN_HEADING, align 4
  %21 = load i32, i32* @COLOR_GREEN, align 4
  %22 = call i32 @init_pair(i32 %20, i32 %21, i32 -1)
  %23 = load i32, i32* @SCROLLWIN_BOX, align 4
  %24 = load i32, i32* @COLOR_YELLOW, align 4
  %25 = call i32 @init_pair(i32 %23, i32 %24, i32 -1)
  %26 = load i32, i32* @DIALOG_TEXT, align 4
  %27 = call i32 @init_pair(i32 %26, i32 -1, i32 -1)
  %28 = load i32, i32* @DIALOG_BOX, align 4
  %29 = load i32, i32* @COLOR_YELLOW, align 4
  %30 = call i32 @init_pair(i32 %28, i32 %29, i32 -1)
  %31 = load i32, i32* @DIALOG_MENU_BACK, align 4
  %32 = load i32, i32* @COLOR_YELLOW, align 4
  %33 = call i32 @init_pair(i32 %31, i32 %32, i32 -1)
  %34 = load i32, i32* @DIALOG_MENU_FORE, align 4
  %35 = load i32, i32* @COLOR_RED, align 4
  %36 = call i32 @init_pair(i32 %34, i32 %35, i32 -1)
  %37 = load i32, i32* @INPUT_BOX, align 4
  %38 = load i32, i32* @COLOR_YELLOW, align 4
  %39 = call i32 @init_pair(i32 %37, i32 %38, i32 -1)
  %40 = load i32, i32* @INPUT_HEADING, align 4
  %41 = load i32, i32* @COLOR_GREEN, align 4
  %42 = call i32 @init_pair(i32 %40, i32 %41, i32 -1)
  %43 = load i32, i32* @INPUT_TEXT, align 4
  %44 = call i32 @init_pair(i32 %43, i32 -1, i32 -1)
  %45 = load i32, i32* @INPUT_FIELD, align 4
  %46 = call i32 @init_pair(i32 %45, i32 -1, i32 -1)
  %47 = load i32, i32* @FUNCTION_HIGHLIGHT, align 4
  %48 = call i32 @init_pair(i32 %47, i32 -1, i32 -1)
  %49 = load i32, i32* @FUNCTION_TEXT, align 4
  %50 = load i32, i32* @COLOR_YELLOW, align 4
  %51 = call i32 @init_pair(i32 %49, i32 %50, i32 -1)
  ret void
}

declare dso_local i32 @init_pair(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
