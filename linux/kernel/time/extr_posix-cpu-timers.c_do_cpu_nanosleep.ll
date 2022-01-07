; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_do_cpu_nanosleep.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_do_cpu_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.restart_block }
%struct.restart_block = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.itimerspec64 = type { i32, %struct.timespec64, i32, %struct.TYPE_5__, %struct.TYPE_7__*, i32 }
%struct.timespec64 = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.k_itimer = type { i32, %struct.timespec64, i32, %struct.TYPE_5__, %struct.TYPE_7__*, i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@do_cpu_nanosleep.zero_it = internal global %struct.itimerspec64 zeroinitializer, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TIMER_RETRY = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@TT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.timespec64*)* @do_cpu_nanosleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cpu_nanosleep(i32 %0, i32 %1, %struct.timespec64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca %struct.itimerspec64, align 8
  %9 = alloca %struct.k_itimer, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.restart_block*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.timespec64* %2, %struct.timespec64** %7, align 8
  %13 = call i32 @memset(%struct.k_itimer* %9, i32 0, i32 40)
  %14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = call i32 @posix_cpu_timer_create(%struct.k_itimer* %9)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %21 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 4
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %118, label %24

24:                                               ; preds = %3
  %25 = bitcast %struct.itimerspec64* %8 to %struct.k_itimer*
  %26 = call i32 @memset(%struct.k_itimer* %25, i32 0, i32 40)
  %27 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %8, i32 0, i32 1
  %28 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %29 = bitcast %struct.timespec64* %27 to i8*
  %30 = bitcast %struct.timespec64* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 8, i1 false)
  %31 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %struct.itimerspec64* %8 to %struct.k_itimer*
  %35 = call i32 @posix_cpu_timer_set(%struct.k_itimer* %9, i32 %33, %struct.k_itimer* %34, %struct.k_itimer* null)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %120

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %57, %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %45 = call i32 @signal_pending(%struct.TYPE_7__* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i64 @cpu_timer_getexpires(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = call i32 @posix_cpu_timer_del(%struct.k_itimer* %9)
  %55 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %56 = call i32 @spin_unlock_irq(i32* %55)
  store i32 0, i32* %4, align 4
  br label %120

57:                                               ; preds = %48
  %58 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %59 = call i32 @__set_current_state(i32 %58)
  %60 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = call i32 (...) @schedule()
  %63 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %64 = call i32 @spin_lock_irq(i32* %63)
  br label %43

65:                                               ; preds = %43
  %66 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i64 @cpu_timer_getexpires(i32* %67)
  store i64 %68, i64* %10, align 8
  %69 = bitcast %struct.itimerspec64* %8 to %struct.k_itimer*
  %70 = call i32 @posix_cpu_timer_set(%struct.k_itimer* %9, i32 0, %struct.k_itimer* bitcast (%struct.itimerspec64* @do_cpu_nanosleep.zero_it to %struct.k_itimer*), %struct.k_itimer* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = call i32 @posix_cpu_timer_del(%struct.k_itimer* %9)
  br label %75

75:                                               ; preds = %73, %65
  %76 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %77 = call i32 @spin_unlock_irq(i32* %76)
  br label %78

78:                                               ; preds = %82, %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @TIMER_RETRY, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %84 = call i32 @spin_lock_irq(i32* %83)
  %85 = call i32 @posix_cpu_timer_del(%struct.k_itimer* %9)
  store i32 %85, i32* %11, align 4
  %86 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 2
  %87 = call i32 @spin_unlock_irq(i32* %86)
  br label %78

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %8, i32 0, i32 1
  %90 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %120

98:                                               ; preds = %88
  %99 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store %struct.restart_block* %102, %struct.restart_block** %12, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.restart_block*, %struct.restart_block** %12, align 8
  %105 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  %107 = load %struct.restart_block*, %struct.restart_block** %12, align 8
  %108 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TT_NONE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %98
  %114 = load %struct.restart_block*, %struct.restart_block** %12, align 8
  %115 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %8, i32 0, i32 1
  %116 = call i32 @nanosleep_copyout(%struct.restart_block* %114, %struct.timespec64* %115)
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %98
  br label %118

118:                                              ; preds = %117, %3
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %97, %53, %38
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.k_itimer*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @posix_cpu_timer_create(%struct.k_itimer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @posix_cpu_timer_set(%struct.k_itimer*, i32, %struct.k_itimer*, %struct.k_itimer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @signal_pending(%struct.TYPE_7__*) #1

declare dso_local i64 @cpu_timer_getexpires(i32*) #1

declare dso_local i32 @posix_cpu_timer_del(%struct.k_itimer*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @nanosleep_copyout(%struct.restart_block*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
