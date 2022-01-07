; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_timer_rearm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_timer_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cpu_timer }
%struct.cpu_timer = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.sighand_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*)* @posix_cpu_timer_rearm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posix_cpu_timer_rearm(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_timer*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.sighand_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %9 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %10 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @CPUCLOCK_WHICH(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.cpu_timer* %15, %struct.cpu_timer** %4, align 8
  %16 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %17 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %16, i32 0, i32 0
  %18 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  store %struct.task_struct* %18, %struct.task_struct** %5, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %88

26:                                               ; preds = %1
  %27 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %28 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @CPUCLOCK_PERTHREAD(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = call i32 @cpu_clock_sample(i32 %33, %struct.task_struct* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bump_cpu_timer(%struct.k_itimer* %36, i32 %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %88

45:                                               ; preds = %32
  %46 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %47 = call %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* %46, i64* %7)
  store %struct.sighand_struct* %47, %struct.sighand_struct** %6, align 8
  %48 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %49 = icmp ne %struct.sighand_struct* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %88

51:                                               ; preds = %45
  br label %82

52:                                               ; preds = %26
  %53 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %54 = call %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* %53, i64* %7)
  store %struct.sighand_struct* %54, %struct.sighand_struct** %6, align 8
  %55 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %56 = icmp eq %struct.sighand_struct* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %62 = call i32 @cpu_timer_setexpires(%struct.cpu_timer* %61, i32 0)
  br label %88

63:                                               ; preds = %52
  %64 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %71 = call i64 @thread_group_empty(%struct.task_struct* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %85

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %78 = call i32 @cpu_clock_sample_group(i32 %76, %struct.task_struct* %77, i32 1)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @bump_cpu_timer(%struct.k_itimer* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %51
  %83 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %84 = call i32 @arm_timer(%struct.k_itimer* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %87 = call i32 @unlock_task_sighand(%struct.task_struct* %86, i64* %7)
  br label %88

88:                                               ; preds = %85, %60, %50, %44, %25
  ret void
}

declare dso_local i32 @CPUCLOCK_WHICH(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @cpu_clock_sample(i32, %struct.task_struct*) #1

declare dso_local i32 @bump_cpu_timer(%struct.k_itimer*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sighand_struct* @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @cpu_timer_setexpires(%struct.cpu_timer*, i32) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @cpu_clock_sample_group(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @arm_timer(%struct.k_itimer*) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
