; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_adjust_historical_crosststamp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_adjust_historical_crosststamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.timekeeper }
%struct.timekeeper = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.system_time_snapshot = type { i32, i32 }
%struct.system_device_crosststamp = type { i8*, i8* }

@tk_core = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.system_time_snapshot*, i64, i64, i32, %struct.system_device_crosststamp*)* @adjust_historical_crosststamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_historical_crosststamp(%struct.system_time_snapshot* %0, i64 %1, i64 %2, i32 %3, %struct.system_device_crosststamp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.system_time_snapshot*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.system_device_crosststamp*, align 8
  %12 = alloca %struct.timekeeper*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.system_time_snapshot* %0, %struct.system_time_snapshot** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.system_device_crosststamp* %4, %struct.system_device_crosststamp** %11, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tk_core, i32 0, i32 0), %struct.timekeeper** %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %5
  store i32 0, i32* %6, align 4
  br label %119

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sdiv i64 %25, 2
  %27 = icmp sgt i64 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub nsw i64 %32, %33
  br label %37

35:                                               ; preds = %23
  %36 = load i64, i64* %8, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %34, %31 ], [ %36, %35 ]
  store i64 %38, i64* %8, align 8
  %39 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %40 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %7, align 8
  %43 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ktime_sub(i8* %41, i32 %44)
  %46 = call i64 @ktime_to_ns(i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @scale64_check_overflow(i64 %47, i64 %48, i64* %13)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %6, align 4
  br label %119

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.timekeeper*, %struct.timekeeper** %12, align 8
  %60 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.timekeeper*, %struct.timekeeper** %12, align 8
  %64 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @mul_u64_u32_div(i64 %58, i32 %62, i32 %66)
  store i64 %67, i64* %14, align 8
  br label %85

68:                                               ; preds = %54
  %69 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %70 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %7, align 8
  %73 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ktime_sub(i8* %71, i32 %74)
  %76 = call i64 @ktime_to_ns(i32 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @scale64_check_overflow(i64 %77, i64 %78, i64* %14)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %6, align 4
  br label %119

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %7, align 8
  %90 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %13, align 8
  %93 = call i8* @ktime_add_ns(i32 %91, i64 %92)
  %94 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %95 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %7, align 8
  %97 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %14, align 8
  %100 = call i8* @ktime_add_ns(i32 %98, i64 %99)
  %101 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %102 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %118

103:                                              ; preds = %85
  %104 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %105 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i8* @ktime_sub_ns(i8* %106, i64 %107)
  %109 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %110 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %112 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i8* @ktime_sub_ns(i8* %113, i64 %114)
  %116 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %11, align 8
  %117 = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %103, %88
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %82, %52, %22
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i8*, i32) #1

declare dso_local i32 @scale64_check_overflow(i64, i64, i64*) #1

declare dso_local i64 @mul_u64_u32_div(i64, i32, i32) #1

declare dso_local i8* @ktime_add_ns(i32, i64) #1

declare dso_local i8* @ktime_sub_ns(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
