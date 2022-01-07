; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_forward.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@HRTIMER_STATE_ENQUEUED = common dso_local global i32 0, align 4
@hrtimer_resolution = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hrtimer_forward(%struct.hrtimer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hrtimer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %13 = call i32 @hrtimer_get_expires(%struct.hrtimer* %12)
  %14 = call i64 @ktime_sub(i64 %11, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %20 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HRTIMER_STATE_ENQUEUED, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %65

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @hrtimer_resolution, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @hrtimer_resolution, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sge i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @ktime_to_ns(i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ktime_divns(i64 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @hrtimer_add_expires_ns(%struct.hrtimer* %46, i32 %49)
  %51 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %52 = call i64 @hrtimer_get_expires_tv64(%struct.hrtimer* %51)
  %53 = load i64, i64* %6, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %33
  %61 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @hrtimer_add_expires(%struct.hrtimer* %61, i64 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %55, %26, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @ktime_sub(i64, i32) #1

declare dso_local i32 @hrtimer_get_expires(%struct.hrtimer*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_to_ns(i64) #1

declare dso_local i32 @ktime_divns(i64, i32) #1

declare dso_local i32 @hrtimer_add_expires_ns(%struct.hrtimer*, i32) #1

declare dso_local i64 @hrtimer_get_expires_tv64(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_add_expires(%struct.hrtimer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
