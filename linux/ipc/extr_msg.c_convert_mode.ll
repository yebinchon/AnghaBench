; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_msg.c_convert_mode.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_msg.c_convert_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_COPY = common dso_local global i32 0, align 4
@SEARCH_NUMBER = common dso_local global i32 0, align 4
@SEARCH_ANY = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@SEARCH_LESSEQUAL = common dso_local global i32 0, align 4
@MSG_EXCEPT = common dso_local global i32 0, align 4
@SEARCH_NOTEQUAL = common dso_local global i32 0, align 4
@SEARCH_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @convert_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_mode(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MSG_COPY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SEARCH_NUMBER, align 4
  store i32 %11, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @SEARCH_ANY, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %12
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LONG_MIN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* @LONG_MAX, align 8
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  br label %35

30:                                               ; preds = %22
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 0, %32
  %34 = load i64*, i64** %4, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* @SEARCH_LESSEQUAL, align 4
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %18
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MSG_EXCEPT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @SEARCH_NOTEQUAL, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @SEARCH_EQUAL, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %35, %16, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
