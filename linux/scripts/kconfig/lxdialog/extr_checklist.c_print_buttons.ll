; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_checklist.c_print_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_checklist.c_print_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" Help \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @print_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_buttons(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 %12, 11
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 2
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @print_button(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 14
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @print_button(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 14, %35
  %37 = add nsw i32 %34, %36
  %38 = call i32 @wmove(i32* %31, i32 %32, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @wrefresh(i32* %39)
  ret void
}

declare dso_local i32 @print_button(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
