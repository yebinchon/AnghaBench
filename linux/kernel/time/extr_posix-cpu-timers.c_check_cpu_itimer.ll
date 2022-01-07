; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_cpu_itimer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_cpu_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cpu_itimer = type { i64, i64 }

@SIGPROF = common dso_local global i32 0, align 4
@ITIMER_PROF = common dso_local global i32 0, align 4
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.cpu_itimer*, i64*, i64, i32)* @check_cpu_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cpu_itimer(%struct.task_struct* %0, %struct.cpu_itimer* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.cpu_itimer*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.cpu_itimer* %1, %struct.cpu_itimer** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %12 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %73

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %19 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %16
  %23 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %24 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %29 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %32 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %37 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @SIGPROF, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @ITIMER_PROF, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ITIMER_VIRTUAL, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = call i32 @task_tgid(%struct.task_struct* %48)
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @trace_itimer_expire(i32 %47, i32 %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SEND_SIG_PRIV, align 4
  %54 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %55 = call i32 @__group_send_sig_info(i32 %52, i32 %53, %struct.task_struct* %54)
  br label %56

56:                                               ; preds = %46, %16
  %57 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %58 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %63 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %70 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %8, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %15, %68, %61, %56
  ret void
}

declare dso_local i32 @trace_itimer_expire(i32, i32, i64) #1

declare dso_local i32 @task_tgid(%struct.task_struct*) #1

declare dso_local i32 @__group_send_sig_info(i32, i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
