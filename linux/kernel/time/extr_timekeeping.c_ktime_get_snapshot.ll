; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.timekeeper, i32 }
%struct.timekeeper = type { %struct.TYPE_5__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.system_time_snapshot = type { i8*, i8*, i32, i32, i32 }

@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@timekeeping_suspended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktime_get_snapshot(%struct.system_time_snapshot* %0) #0 {
  %2 = alloca %struct.system_time_snapshot*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.system_time_snapshot* %0, %struct.system_time_snapshot** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0), %struct.timekeeper** %3, align 8
  %10 = load i32, i32* @timekeeping_suspended, align 4
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  br label %12

12:                                               ; preds = %45, %1
  %13 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 1))
  store i32 %13, i32* %4, align 4
  %14 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 1
  %16 = call i32 @tk_clock_read(%struct.TYPE_5__* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %18 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %2, align 8
  %21 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %23 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %2, align 8
  %26 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %28 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0, i32 2), align 4
  %32 = call i32 @ktime_add(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %34 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %38 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %37, i32 0, i32 1
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @timekeeping_cycles_to_ns(%struct.TYPE_5__* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %42 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @timekeeping_cycles_to_ns(%struct.TYPE_5__* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 1), i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %12, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %2, align 8
  %52 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i8* @ktime_add_ns(i32 %53, i32 %54)
  %56 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %2, align 8
  %57 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i8* @ktime_add_ns(i32 %58, i32 %59)
  %61 = load %struct.system_time_snapshot*, %struct.system_time_snapshot** %2, align 8
  %62 = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @tk_clock_read(%struct.TYPE_5__*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @timekeeping_cycles_to_ns(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i8* @ktime_add_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
