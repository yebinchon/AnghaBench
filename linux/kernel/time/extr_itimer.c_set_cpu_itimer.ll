; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_itimer.c_set_cpu_itimer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_itimer.c_set_cpu_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.cpu_itimer* }
%struct.cpu_itimer = type { i64, i64 }
%struct.itimerval = type { i8*, i8* }

@TICK_NSEC = common dso_local global i64 0, align 8
@CPUCLOCK_VIRT = common dso_local global i32 0, align 4
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4
@ITIMER_PROF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.itimerval*, %struct.itimerval*)* @set_cpu_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_itimer(%struct.task_struct* %0, i32 %1, %struct.itimerval* %2, %struct.itimerval* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itimerval*, align 8
  %8 = alloca %struct.itimerval*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cpu_itimer*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.itimerval* %2, %struct.itimerval** %7, align 8
  store %struct.itimerval* %3, %struct.itimerval** %8, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.cpu_itimer*, %struct.cpu_itimer** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %18, i64 %20
  store %struct.cpu_itimer* %21, %struct.cpu_itimer** %13, align 8
  %22 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %23 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @timeval_to_ktime(i8* %24)
  %26 = call i64 @ktime_to_ns(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @timeval_to_ktime(i8* %29)
  %31 = call i64 @ktime_to_ns(i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.cpu_itimer*, %struct.cpu_itimer** %13, align 8
  %38 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.cpu_itimer*, %struct.cpu_itimer** %13, align 8
  %41 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45, %4
  %49 = load i64, i64* %10, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* @TICK_NSEC, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @set_process_cpu_timer(%struct.task_struct* %56, i32 %57, i64* %10, i64* %9)
  br label %59

59:                                               ; preds = %55, %45
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.cpu_itimer*, %struct.cpu_itimer** %13, align 8
  %62 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.cpu_itimer*, %struct.cpu_itimer** %13, align 8
  %65 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @CPUCLOCK_VIRT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @ITIMER_VIRTUAL, align 4
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @ITIMER_PROF, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @trace_itimer_state(i32 %74, %struct.itimerval* %75, i64 %76)
  %78 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %79 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.itimerval*, %struct.itimerval** %8, align 8
  %84 = icmp ne %struct.itimerval* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %73
  %86 = load i64, i64* %9, align 8
  %87 = call i8* @ns_to_timeval(i64 %86)
  %88 = load %struct.itimerval*, %struct.itimerval** %8, align 8
  %89 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i8* @ns_to_timeval(i64 %90)
  %92 = load %struct.itimerval*, %struct.itimerval** %8, align 8
  %93 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %85, %73
  ret void
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @timeval_to_ktime(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_process_cpu_timer(%struct.task_struct*, i32, i64*, i64*) #1

declare dso_local i32 @trace_itimer_state(i32, %struct.itimerval*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @ns_to_timeval(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
