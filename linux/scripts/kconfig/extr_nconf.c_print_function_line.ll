; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_print_function_line.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_print_function_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@stdscr = common dso_local global i32 0, align 4
@function_keys_num = common dso_local global i32 0, align 4
@main_window = common dso_local global i32 0, align 4
@attributes = common dso_local global i32* null, align 8
@FUNCTION_HIGHLIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@function_keys = common dso_local global %struct.TYPE_2__* null, align 8
@FUNCTION_TEXT = common dso_local global i64 0, align 8
@NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_function_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_function_line() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %5 = load i32, i32* @stdscr, align 4
  %6 = call i32 @getmaxy(i32 %5)
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %69, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @function_keys_num, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = load i32, i32* @main_window, align 4
  %13 = load i32*, i32** @attributes, align 8
  %14 = load i64, i64* @FUNCTION_HIGHLIGHT, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wattrset(i32 %12, i32 %16)
  %18 = load i32, i32* @main_window, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 3
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mvwprintw(i32 %18, i32 %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @main_window, align 4
  %30 = load i32*, i32** @attributes, align 8
  %31 = load i64, i64* @FUNCTION_TEXT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wattrset(i32 %29, i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strlen(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* @main_window, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 3
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mvwprintw(i32 %46, i32 %48, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strlen(i32 %62)
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %11
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %7

72:                                               ; preds = %7
  %73 = load i32, i32* @main_window, align 4
  %74 = load i32*, i32** @attributes, align 8
  %75 = load i64, i64* @NORMAL, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wattrset(i32 %73, i32 %77)
  ret void
}

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @wattrset(i32, i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
