; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_nsleep.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_nsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.restart_block }
%struct.restart_block = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timespec64 = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4
@posix_cpu_nsleep_restart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.timespec64*)* @posix_cpu_nsleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_cpu_nsleep(i32 %0, i32 %1, %struct.timespec64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca %struct.restart_block*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.timespec64* %2, %struct.timespec64** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.restart_block* %11, %struct.restart_block** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @CPUCLOCK_PERTHREAD(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @CPUCLOCK_PID(i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @CPUCLOCK_PID(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %23 = call i64 @task_pid_vnr(%struct.TYPE_5__* %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %19, %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %32 = call i32 @do_cpu_nanosleep(i32 %29, i32 %30, %struct.timespec64* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TIMER_ABSTIME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ERESTARTNOHAND, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %37
  %46 = load i32, i32* @posix_cpu_nsleep_restart, align 4
  %47 = load %struct.restart_block*, %struct.restart_block** %8, align 8
  %48 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.restart_block*, %struct.restart_block** %8, align 8
  %51 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %28
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %42, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i64 @CPUCLOCK_PID(i32) #1

declare dso_local i64 @task_pid_vnr(%struct.TYPE_5__*) #1

declare dso_local i32 @do_cpu_nanosleep(i32, i32, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
