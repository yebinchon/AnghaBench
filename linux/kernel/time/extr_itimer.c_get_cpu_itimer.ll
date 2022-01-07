; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_itimer.c_get_cpu_itimer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_itimer.c_get_cpu_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.cpu_itimer* }
%struct.cpu_itimer = type { i64, i64 }
%struct.itimerval = type { i8*, i8* }

@CPUCLOCK_MAX = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.itimerval*)* @get_cpu_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cpu_itimer(%struct.task_struct* %0, i32 %1, %struct.itimerval* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cpu_itimer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.itimerval* %2, %struct.itimerval** %6, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.cpu_itimer*, %struct.cpu_itimer** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %17, i64 %19
  store %struct.cpu_itimer* %20, %struct.cpu_itimer** %9, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.cpu_itimer*, %struct.cpu_itimer** %9, align 8
  %27 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.cpu_itimer*, %struct.cpu_itimer** %9, align 8
  %30 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %3
  %35 = load i32, i32* @CPUCLOCK_MAX, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %11, align 8
  %38 = alloca i64, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = call i32 @thread_group_sample_cputime(%struct.task_struct* %39, i64* %38)
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %38, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i64, i64* @TICK_NSEC, align 8
  store i64 %49, i64* %7, align 8
  br label %54

50:                                               ; preds = %34
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %50, %48
  %55 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %56

56:                                               ; preds = %54, %3
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = load i64, i64* %7, align 8
  %63 = call i8* @ns_to_timeval(i64 %62)
  %64 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %65 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i8* @ns_to_timeval(i64 %66)
  %68 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %69 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @thread_group_sample_cputime(%struct.task_struct*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @ns_to_timeval(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
