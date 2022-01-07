; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c___big_gang_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c___big_gang_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__big_gang_check() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i64, i64* %1, align 8
  %6 = call i32 (...) @rand()
  %7 = srem i32 %6, 113
  %8 = add nsw i32 %7, 1
  %9 = call i32 (...) @rand()
  %10 = srem i32 %9, 71
  %11 = call i32 (...) @rand()
  %12 = srem i32 %11, 157
  %13 = call i32 (...) @rand()
  %14 = srem i32 %13, 91
  %15 = add nsw i32 %14, 1
  %16 = call i32 @__gang_check(i64 %5, i32 %8, i32 %10, i32 %12, i32 %15)
  %17 = load i64, i64* %1, align 8
  store i64 %17, i64* %3, align 8
  %18 = call i32 (...) @rand()
  %19 = srem i32 %18, 1000000
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = urem i64 %23, 8589934592
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %4
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %4, label %34

34:                                               ; preds = %30
  ret void
}

declare dso_local i32 @__gang_check(i64, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
