; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_raw_ts64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_raw_ts64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i32, i32 }
%struct.timespec64 = type { i64, i32 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktime_get_raw_ts64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 1), %struct.timekeeper** %3, align 8
  br label %6

6:                                                ; preds = %16, %1
  %7 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  store i32 %7, i32* %4, align 4
  %8 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %14 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %13, i32 0, i32 0
  %15 = call i32 @timekeeping_get_ns(i32* %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %6, label %20

20:                                               ; preds = %16
  %21 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %22 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @timespec64_add_ns(%struct.timespec64* %23, i32 %24)
  ret void
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_get_ns(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @timespec64_add_ns(%struct.timespec64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
