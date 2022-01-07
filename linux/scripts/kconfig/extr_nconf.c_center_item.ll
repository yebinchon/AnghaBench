; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_center_item.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_center_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curses_menu = common dso_local global i32 0, align 4
@mwin_max_lines = common dso_local global i32 0, align 4
@curses_menu_items = common dso_local global i32* null, align 8
@main_window = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @center_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @center_item(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @curses_menu, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_top_row(i32 %6, i32 %8)
  %10 = load i32, i32* @curses_menu, align 4
  %11 = call i32 @top_row(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @mwin_max_lines, align 4
  %19 = add nsw i32 %17, %18
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @mwin_max_lines, align 4
  %24 = sdiv i32 %23, 2
  %25 = sub nsw i32 %22, %24
  %26 = call i32 @max(i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @curses_menu, align 4
  %29 = call i32 @item_count(i32 %28)
  %30 = load i32, i32* @mwin_max_lines, align 4
  %31 = sub nsw i32 %29, %30
  %32 = icmp sge i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* @curses_menu, align 4
  %35 = call i32 @item_count(i32 %34)
  %36 = load i32, i32* @mwin_max_lines, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %21
  %39 = load i32, i32* @curses_menu, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @set_top_row(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %15
  %43 = load i32, i32* @curses_menu, align 4
  %44 = load i32*, i32** @curses_menu_items, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_current_item(i32 %43, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @curses_menu, align 4
  %53 = call i32 @post_menu(i32 %52)
  %54 = load i32, i32* @main_window, align 4
  %55 = call i32 @refresh_all_windows(i32 %54)
  ret void
}

declare dso_local i32 @set_top_row(i32, i32) #1

declare dso_local i32 @top_row(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @item_count(i32) #1

declare dso_local i32 @set_current_item(i32, i32) #1

declare dso_local i32 @post_menu(i32) #1

declare dso_local i32 @refresh_all_windows(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
