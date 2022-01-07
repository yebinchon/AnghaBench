; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.clocksource* }
%struct.clocksource = type { i32 }
%struct.timespec64 = type { i64, i64 }

@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@timekeeping_suspend.old_delta = internal global %struct.timespec64 zeroinitializer, align 8
@timekeeping_suspend_time = common dso_local global %struct.timespec64 zeroinitializer, align 8
@persistent_clock_exists = common dso_local global i32 0, align 4
@suspend_timing_needed = common dso_local global i32 0, align 4
@timekeeper_lock = common dso_local global i32 0, align 4
@timekeeping_suspended = common dso_local global i32 0, align 4
@TK_MIRROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timekeeping_suspend() #0 {
  %1 = alloca %struct.timekeeper*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.clocksource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 1), %struct.timekeeper** %1, align 8
  %11 = call i32 @read_persistent_clock64(%struct.timespec64* @timekeeping_suspend_time)
  %12 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* getelementptr inbounds (%struct.timespec64, %struct.timespec64* @timekeeping_suspend_time, i32 0, i32 1), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %0
  store i32 1, i32* @persistent_clock_exists, align 4
  br label %18

18:                                               ; preds = %17, %14
  store i32 1, i32* @suspend_timing_needed, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %19)
  %21 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  %22 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %23 = call i32 @timekeeping_forward_now(%struct.timekeeper* %22)
  store i32 1, i32* @timekeeping_suspended, align 4
  %24 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %25 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.clocksource*, %struct.clocksource** %26, align 8
  store %struct.clocksource* %27, %struct.clocksource** %5, align 8
  %28 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %29 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @clocksource_start_suspend_timing(%struct.clocksource* %32, i32 %33)
  %35 = load i32, i32* @persistent_clock_exists, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %18
  %38 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %39 = call { i64, i64 } @tk_xtime(%struct.timekeeper* %38)
  %40 = bitcast %struct.timespec64* %8 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %39, 0
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %39, 1
  store i64 %44, i64* %43, align 8
  %45 = bitcast %struct.timespec64* %8 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec64* @timekeeping_suspend_time to { i64, i64 }*), i32 0, i32 0), align 8
  %51 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec64* @timekeeping_suspend_time to { i64, i64 }*), i32 0, i32 1), align 8
  %52 = call { i64, i64 } @timespec64_sub(i64 %47, i64 %49, i64 %50, i64 %51)
  %53 = bitcast %struct.timespec64* %7 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i64, i64 } %52, 0
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i64, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = bitcast %struct.timespec64* %3 to i8*
  %59 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = bitcast %struct.timespec64* %3 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec64* @timekeeping_suspend.old_delta to { i64, i64 }*), i32 0, i32 0), align 8
  %66 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec64* @timekeeping_suspend.old_delta to { i64, i64 }*), i32 0, i32 1), align 8
  %67 = call { i64, i64 } @timespec64_sub(i64 %62, i64 %64, i64 %65, i64 %66)
  %68 = bitcast %struct.timespec64* %9 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = extractvalue { i64, i64 } %67, 0
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = extractvalue { i64, i64 } %67, 1
  store i64 %72, i64* %71, align 8
  %73 = bitcast %struct.timespec64* %4 to i8*
  %74 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @abs(i64 %76)
  %78 = icmp sge i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %37
  %80 = bitcast %struct.timespec64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec64* @timekeeping_suspend.old_delta to i8*), i8* align 8 %80, i64 16, i1 false)
  br label %96

81:                                               ; preds = %37
  %82 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec64* @timekeeping_suspend_time to { i64, i64 }*), i32 0, i32 0), align 8
  %83 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec64* @timekeeping_suspend_time to { i64, i64 }*), i32 0, i32 1), align 8
  %84 = bitcast %struct.timespec64* %4 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call { i64, i64 } @timespec64_add(i64 %82, i64 %83, i64 %86, i64 %88)
  %90 = bitcast %struct.timespec64* %10 to { i64, i64 }*
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0
  %92 = extractvalue { i64, i64 } %89, 0
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1
  %94 = extractvalue { i64, i64 } %89, 1
  store i64 %94, i64* %93, align 8
  %95 = bitcast %struct.timespec64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec64* @timekeeping_suspend_time to i8*), i8* align 8 %95, i64 16, i1 false)
  br label %96

96:                                               ; preds = %81, %79
  br label %97

97:                                               ; preds = %96, %18
  %98 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %99 = load i32, i32* @TK_MIRROR, align 4
  %100 = call i32 @timekeeping_update(%struct.timekeeper* %98, i32 %99)
  %101 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %102 = call i32 @halt_fast_timekeeper(%struct.timekeeper* %101)
  %103 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  %104 = load i64, i64* %2, align 8
  %105 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %104)
  %106 = call i32 (...) @tick_suspend()
  %107 = call i32 (...) @clocksource_suspend()
  %108 = call i32 (...) @clockevents_suspend()
  ret i32 0
}

declare dso_local i32 @read_persistent_clock64(%struct.timespec64*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_forward_now(%struct.timekeeper*) #1

declare dso_local i32 @clocksource_start_suspend_timing(%struct.clocksource*, i32) #1

declare dso_local { i64, i64 } @timespec64_sub(i64, i64, i64, i64) #1

declare dso_local { i64, i64 } @tk_xtime(%struct.timekeeper*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @abs(i64) #1

declare dso_local { i64, i64 } @timespec64_add(i64, i64, i64, i64) #1

declare dso_local i32 @timekeeping_update(%struct.timekeeper*, i32) #1

declare dso_local i32 @halt_fast_timekeeper(%struct.timekeeper*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tick_suspend(...) #1

declare dso_local i32 @clocksource_suspend(...) #1

declare dso_local i32 @clockevents_suspend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
