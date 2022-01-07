; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_loadavg.c_fixed_power_int.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_loadavg.c_fixed_power_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @fixed_power_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fixed_power_int(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = mul i64 %20, %19
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* %7, align 8
  %30 = zext i32 %28 to i64
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %18, %14
  %33 = load i32, i32* %6, align 4
  %34 = lshr i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %52

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = mul i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %4, align 8
  %50 = zext i32 %48 to i64
  %51 = lshr i64 %49, %50
  store i64 %51, i64* %4, align 8
  br label %14

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
