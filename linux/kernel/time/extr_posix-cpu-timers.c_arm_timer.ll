; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_arm_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_arm_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.cpu_timer }
%struct.cpu_timer = type { %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.posix_cputimer_base* }
%struct.posix_cputimer_base = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.posix_cputimer_base* }

@TICK_DEP_BIT_POSIX_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*)* @arm_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_timer(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_timer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.posix_cputimer_base*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %8 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %9 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CPUCLOCK_WHICH(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %13 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.cpu_timer* %14, %struct.cpu_timer** %4, align 8
  %15 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %16 = call i64 @cpu_timer_getexpires(%struct.cpu_timer* %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %18 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %17, i32 0, i32 0
  %19 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  store %struct.task_struct* %19, %struct.task_struct** %6, align 8
  %20 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %21 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @CPUCLOCK_PERTHREAD(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %29, i64 %31
  store %struct.posix_cputimer_base* %32, %struct.posix_cputimer_base** %7, align 8
  br label %43

33:                                               ; preds = %1
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %39, i64 %41
  store %struct.posix_cputimer_base* %42, %struct.posix_cputimer_base** %7, align 8
  br label %43

43:                                               ; preds = %33, %25
  %44 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %7, align 8
  %45 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %44, i32 0, i32 1
  %46 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %47 = call i32 @cpu_timer_enqueue(i32* %45, %struct.cpu_timer* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %76

50:                                               ; preds = %43
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %7, align 8
  %53 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %7, align 8
  %59 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %62 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @CPUCLOCK_PERTHREAD(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = load i32, i32* @TICK_DEP_BIT_POSIX_TIMER, align 4
  %69 = call i32 @tick_dep_set_task(%struct.task_struct* %67, i32 %68)
  br label %76

70:                                               ; preds = %60
  %71 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* @TICK_DEP_BIT_POSIX_TIMER, align 4
  %75 = call i32 @tick_dep_set_signal(%struct.TYPE_8__* %73, i32 %74)
  br label %76

76:                                               ; preds = %49, %70, %66
  ret void
}

declare dso_local i32 @CPUCLOCK_WHICH(i32) #1

declare dso_local i64 @cpu_timer_getexpires(%struct.cpu_timer*) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @cpu_timer_enqueue(i32*, %struct.cpu_timer*) #1

declare dso_local i32 @tick_dep_set_task(%struct.task_struct*, i32) #1

declare dso_local i32 @tick_dep_set_signal(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
