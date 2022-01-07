; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_uer.c_vx_calc_clock_from_freq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_uer.c_vx_calc_clock_from_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32)* @vx_calc_clock_from_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_calc_clock_from_freq(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 282240000, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 5
  %18 = sdiv i32 %17, 10
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 512
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %46

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 1023
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 513
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 2047
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 2
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 4095
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 4
  %44 = add nsw i32 %43, 511
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %38
  store i32 1534, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %41, %34, %28, %24, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
