; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_resume.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i64, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.clocksource* }
%struct.clocksource = type { i32 }
%struct.timespec64 = type { i32 }

@tk_core = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@timekeeper_lock = common dso_local global i32 0, align 4
@timekeeping_suspend_time = common dso_local global i32 0, align 4
@suspend_timing_needed = common dso_local global i32 0, align 4
@timekeeping_suspended = common dso_local global i64 0, align 8
@TK_MIRROR = common dso_local global i32 0, align 4
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timekeeping_resume() #0 {
  %1 = alloca %struct.timekeeper*, align 8
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec64, align 4
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 4
  %10 = alloca %struct.timespec64, align 4
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tk_core, i32 0, i32 1), %struct.timekeeper** %1, align 8
  %11 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %12 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.clocksource*, %struct.clocksource** %13, align 8
  store %struct.clocksource* %14, %struct.clocksource** %2, align 8
  store i32 0, i32* %8, align 4
  %15 = call i32 @read_persistent_clock64(%struct.timespec64* %4)
  %16 = call i32 (...) @clockevents_resume()
  %17 = call i32 (...) @clocksource_resume()
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %18)
  %20 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tk_core, i32 0, i32 0))
  %21 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %22 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %21, i32 0, i32 2
  %23 = call i64 @tk_clock_read(%struct.TYPE_6__* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @clocksource_stop_suspend_timing(%struct.clocksource* %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ns_to_timespec64(i64 %30)
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.timespec64* %5 to i8*
  %34 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  store i32 1, i32* %8, align 4
  br label %47

35:                                               ; preds = %0
  %36 = call i64 @timespec64_compare(%struct.timespec64* %4, i32* @timekeeping_suspend_time)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @timekeeping_suspend_time, align 4
  %40 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @timespec64_sub(i32 %41, i32 %39)
  %43 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.timespec64* %5 to i8*
  %45 = bitcast %struct.timespec64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %38, %35
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  store i32 0, i32* @suspend_timing_needed, align 4
  %51 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %52 = call i32 @__timekeeping_inject_sleeptime(%struct.timekeeper* %51, %struct.timespec64* %5)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %56 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %60 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %63 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i64 0, i64* @timekeeping_suspended, align 8
  %64 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %65 = load i32, i32* @TK_MIRROR, align 4
  %66 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @timekeeping_update(%struct.timekeeper* %64, i32 %67)
  %69 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tk_core, i32 0, i32 0))
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %70)
  %72 = call i32 (...) @touch_softlockup_watchdog()
  %73 = call i32 (...) @tick_resume()
  %74 = call i32 (...) @hrtimers_resume()
  ret void
}

declare dso_local i32 @read_persistent_clock64(%struct.timespec64*) #1

declare dso_local i32 @clockevents_resume(...) #1

declare dso_local i32 @clocksource_resume(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i64 @tk_clock_read(%struct.TYPE_6__*) #1

declare dso_local i64 @clocksource_stop_suspend_timing(%struct.clocksource*, i64) #1

declare dso_local i32 @ns_to_timespec64(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_compare(%struct.timespec64*, i32*) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

declare dso_local i32 @__timekeeping_inject_sleeptime(%struct.timekeeper*, %struct.timespec64*) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @touch_softlockup_watchdog(...) #1

declare dso_local i32 @tick_resume(...) #1

declare dso_local i32 @hrtimers_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
