; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_round_jiffies_common.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_round_jiffies_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @round_jiffies_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @round_jiffies_common(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = urem i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @HZ, align 8
  %22 = udiv i64 %21, 4
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  store i64 %31, i64* %4, align 8
  br label %39

32:                                               ; preds = %24, %3
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = load i64, i64* @HZ, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %4, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @time_is_after_jiffies(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* %4, align 8
  br label %52

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  ret i64 %53
}

declare dso_local i64 @time_is_after_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
