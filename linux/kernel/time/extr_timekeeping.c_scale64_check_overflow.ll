; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_scale64_check_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_scale64_check_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @scale64_check_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scale64_check_overflow(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @div64_u64_rem(i32 %11, i32 %12, i32* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @fls64(i32 %14)
  %16 = sub nsw i64 32, %15
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @fls64(i32 %17)
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @fls64(i32 %21)
  %23 = sub nsw i64 32, %22
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @fls64(i32 %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %3
  %28 = load i32, i32* @EOVERFLOW, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %44

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @do_div(i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %30, %27
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @div64_u64_rem(i32, i32, i32*) #1

declare dso_local i64 @fls64(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
