; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_real_ts64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_real_ts64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i32, i32 }
%struct.timespec64 = type { i64, i32 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@timekeeping_suspended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktime_get_real_ts64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 1), %struct.timekeeper** %3, align 8
  %6 = load i32, i32* @timekeeping_suspended, align 4
  %7 = call i32 @WARN_ON(i32 %6)
  br label %8

8:                                                ; preds = %18, %1
  %9 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  store i32 %9, i32* %4, align 4
  %10 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %11 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %14 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %16 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %15, i32 0, i32 0
  %17 = call i32 @timekeeping_get_ns(i32* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %8, label %22

22:                                               ; preds = %18
  %23 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %24 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @timespec64_add_ns(%struct.timespec64* %25, i32 %26)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

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
