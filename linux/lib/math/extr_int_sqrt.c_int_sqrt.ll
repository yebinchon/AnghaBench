; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_int_sqrt.c_int_sqrt.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_int_sqrt.c_int_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @int_sqrt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ule i64 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %2, align 8
  br label %40

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @__fls(i64 %12)
  %14 = and i64 %13, -2
  %15 = shl i64 1, %14
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %35, %11
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 2
  store i64 %37, i64* %5, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %9
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @__fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
