; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_timer_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_timer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cpu_timer }
%struct.cpu_timer = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.itimerspec64 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sighand_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*, %struct.itimerspec64*)* @posix_cpu_timer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posix_cpu_timer_get(%struct.k_itimer* %0, %struct.itimerspec64* %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca %struct.itimerspec64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_timer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.sighand_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store %struct.itimerspec64* %1, %struct.itimerspec64** %4, align 8
  %13 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CPUCLOCK_WHICH(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %18 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.cpu_timer* %19, %struct.cpu_timer** %6, align 8
  %20 = load %struct.cpu_timer*, %struct.cpu_timer** %6, align 8
  %21 = call i64 @cpu_timer_getexpires(%struct.cpu_timer* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.cpu_timer*, %struct.cpu_timer** %6, align 8
  %23 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %22, i32 0, i32 0
  %24 = load %struct.task_struct*, %struct.task_struct** %23, align 8
  store %struct.task_struct* %24, %struct.task_struct** %9, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %26 = icmp ne %struct.task_struct* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %95

32:                                               ; preds = %2
  %33 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %34 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ktime_to_timespec64(i32 %35)
  %37 = load %struct.itimerspec64*, %struct.itimerspec64** %4, align 8
  %38 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %95

42:                                               ; preds = %32
  %43 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %44 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @CPUCLOCK_PERTHREAD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %51 = call i64 @cpu_clock_sample(i32 %49, %struct.task_struct* %50)
  store i64 %51, i64* %7, align 8
  br label %70

52:                                               ; preds = %42
  %53 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %54 = call %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* %53, i64* %11)
  store %struct.sighand_struct* %54, %struct.sighand_struct** %10, align 8
  %55 = load %struct.sighand_struct*, %struct.sighand_struct** %10, align 8
  %56 = icmp eq %struct.sighand_struct* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.cpu_timer*, %struct.cpu_timer** %6, align 8
  %62 = call i32 @cpu_timer_setexpires(%struct.cpu_timer* %61, i32 0)
  br label %95

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %66 = call i64 @cpu_clock_sample_group(i32 %64, %struct.task_struct* %65, i32 0)
  store i64 %66, i64* %7, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %68 = call i32 @unlock_task_sighand(%struct.task_struct* %67, i64* %11)
  br label %69

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.itimerspec64*, %struct.itimerspec64** %4, align 8
  %76 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call { i32, i64 } @ns_to_timespec64(i64 %79)
  %81 = bitcast %struct.TYPE_4__* %12 to { i32, i64 }*
  %82 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %81, i32 0, i32 0
  %83 = extractvalue { i32, i64 } %80, 0
  store i32 %83, i32* %82, align 8
  %84 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %81, i32 0, i32 1
  %85 = extractvalue { i32, i64 } %80, 1
  store i64 %85, i64* %84, align 8
  %86 = bitcast %struct.TYPE_4__* %76 to i8*
  %87 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  br label %95

88:                                               ; preds = %70
  %89 = load %struct.itimerspec64*, %struct.itimerspec64** %4, align 8
  %90 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.itimerspec64*, %struct.itimerspec64** %4, align 8
  %93 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %31, %41, %60, %88, %74
  ret void
}

declare dso_local i32 @CPUCLOCK_WHICH(i32) #1

declare dso_local i64 @cpu_timer_getexpires(%struct.cpu_timer*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ktime_to_timespec64(i32) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i64 @cpu_clock_sample(i32, %struct.task_struct*) #1

declare dso_local %struct.sighand_struct* @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_timer_setexpires(%struct.cpu_timer*, i32) #1

declare dso_local i64 @cpu_clock_sample_group(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local { i32, i64 } @ns_to_timespec64(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
