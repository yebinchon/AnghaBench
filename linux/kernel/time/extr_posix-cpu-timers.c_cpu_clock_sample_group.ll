; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_cpu_clock_sample_group.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_cpu_clock_sample_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.posix_cputimers, %struct.thread_group_cputimer }
%struct.posix_cputimers = type { i32 }
%struct.thread_group_cputimer = type { i32 }

@CPUCLOCK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*, i32)* @cpu_clock_sample_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_clock_sample_group(i64 %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread_group_cputimer*, align 8
  %8 = alloca %struct.posix_cputimers*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.thread_group_cputimer* %14, %struct.thread_group_cputimer** %7, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.posix_cputimers* %18, %struct.posix_cputimers** %8, align 8
  %19 = load i32, i32* @CPUCLOCK_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.posix_cputimers*, %struct.posix_cputimers** %8, align 8
  %24 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @READ_ONCE(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = call i32 @thread_group_start_cputime(%struct.task_struct* %32, i32* %22)
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = call i32 @__thread_group_cputime(%struct.task_struct* %35, i32* %22)
  br label %37

37:                                               ; preds = %34, %31
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %7, align 8
  %40 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %39, i32 0, i32 0
  %41 = call i32 @proc_sample_cputime_atomic(i32* %40, i32* %22)
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i32, i32* %22, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i32 @thread_group_start_cputime(%struct.task_struct*, i32*) #2

declare dso_local i32 @__thread_group_cputime(%struct.task_struct*, i32*) #2

declare dso_local i32 @proc_sample_cputime_atomic(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
