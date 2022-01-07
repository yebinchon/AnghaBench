; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_alarmtimer.c_alarm_forward.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_alarmtimer.c_alarm_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alarm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alarm_forward(%struct.alarm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alarm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.alarm* %0, %struct.alarm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.alarm*, %struct.alarm** %5, align 8
  %13 = getelementptr inbounds %struct.alarm, %struct.alarm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @ktime_sub(i64 %11, i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @ktime_to_ns(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ktime_divns(i64 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.alarm*, %struct.alarm** %5, align 8
  %34 = getelementptr inbounds %struct.alarm, %struct.alarm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i64 @ktime_add_ns(i64 %36, i32 %39)
  %41 = load %struct.alarm*, %struct.alarm** %5, align 8
  %42 = getelementptr inbounds %struct.alarm, %struct.alarm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.alarm*, %struct.alarm** %5, align 8
  %45 = getelementptr inbounds %struct.alarm, %struct.alarm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %66

52:                                               ; preds = %27
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load %struct.alarm*, %struct.alarm** %5, align 8
  %57 = getelementptr inbounds %struct.alarm, %struct.alarm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @ktime_add_safe(i64 %59, i64 %60)
  %62 = load %struct.alarm*, %struct.alarm** %5, align 8
  %63 = getelementptr inbounds %struct.alarm, %struct.alarm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %55, %50, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @ktime_sub(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_to_ns(i64) #1

declare dso_local i32 @ktime_divns(i64, i32) #1

declare dso_local i64 @ktime_add_ns(i64, i32) #1

declare dso_local i64 @ktime_add_safe(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
