; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_itimer.c_do_setitimer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_itimer.c_do_setitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, %struct.hrtimer }
%struct.hrtimer = type { i32 }
%struct.itimerval = type { i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CPUCLOCK_VIRT = common dso_local global i32 0, align 4
@CPUCLOCK_PROF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_setitimer(i32 %0, %struct.itimerval* %1, %struct.itimerval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval*, align 8
  %7 = alloca %struct.itimerval*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.hrtimer*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.itimerval* %1, %struct.itimerval** %6, align 8
  store %struct.itimerval* %2, %struct.itimerval** %7, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %11, %struct.task_struct** %8, align 8
  %12 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %13 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %12, i32 0, i32 1
  %14 = call i32 @timeval_valid(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %18 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %17, i32 0, i32 0
  %19 = call i32 @timeval_valid(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %113

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %109 [
    i32 129, label %26
    i32 128, label %97
    i32 130, label %103
  ]

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %56, %26
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.hrtimer* %36, %struct.hrtimer** %9, align 8
  %37 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %38 = icmp ne %struct.itimerval* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %27
  %40 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %41 = call i32 @itimer_get_remtime(%struct.hrtimer* %40)
  %42 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %43 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ktime_to_timeval(i8* %48)
  %50 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %51 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %39, %27
  %53 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %54 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* %53)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %63 = call i32 @hrtimer_cancel_wait_running(%struct.hrtimer* %62)
  br label %27

64:                                               ; preds = %52
  %65 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %66 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @timeval_to_ktime(i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %73 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @timeval_to_ktime(i32 %74)
  %76 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i8* %75, i8** %79, align 8
  %80 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %83 = call i32 @hrtimer_start(%struct.hrtimer* %80, i8* %81, i32 %82)
  br label %89

84:                                               ; preds = %64
  %85 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %86 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i8* null, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %71
  %90 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %91 = call i32 @trace_itimer_state(i32 129, %struct.itimerval* %90, i32 0)
  %92 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %93 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_irq(i32* %95)
  br label %112

97:                                               ; preds = %24
  %98 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %99 = load i32, i32* @CPUCLOCK_VIRT, align 4
  %100 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %101 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %102 = call i32 @set_cpu_itimer(%struct.task_struct* %98, i32 %99, %struct.itimerval* %100, %struct.itimerval* %101)
  br label %112

103:                                              ; preds = %24
  %104 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %105 = load i32, i32* @CPUCLOCK_PROF, align 4
  %106 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %107 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %108 = call i32 @set_cpu_itimer(%struct.task_struct* %104, i32 %105, %struct.itimerval* %106, %struct.itimerval* %107)
  br label %112

109:                                              ; preds = %24
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %103, %97, %89
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %109, %21
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @timeval_valid(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @itimer_get_remtime(%struct.hrtimer*) #1

declare dso_local i32 @ktime_to_timeval(i8*) #1

declare dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hrtimer_cancel_wait_running(%struct.hrtimer*) #1

declare dso_local i8* @timeval_to_ktime(i32) #1

declare dso_local i32 @hrtimer_start(%struct.hrtimer*, i8*, i32) #1

declare dso_local i32 @trace_itimer_state(i32, %struct.itimerval*, i32) #1

declare dso_local i32 @set_cpu_itimer(%struct.task_struct*, i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
