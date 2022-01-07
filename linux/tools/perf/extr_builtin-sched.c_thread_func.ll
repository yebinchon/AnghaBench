; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_thread_func.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_thread_parms = type { i32, %struct.perf_sched*, %struct.task_desc* }
%struct.perf_sched = type { i32, i32 }
%struct.task_desc = type { i8*, i64, i64, i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@PR_SET_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sched_thread_parms*, align 8
  %4 = alloca %struct.task_desc*, align 8
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [22 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.sched_thread_parms*
  store %struct.sched_thread_parms* %13, %struct.sched_thread_parms** %3, align 8
  %14 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %3, align 8
  %15 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %14, i32 0, i32 2
  %16 = load %struct.task_desc*, %struct.task_desc** %15, align 8
  store %struct.task_desc* %16, %struct.task_desc** %4, align 8
  %17 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %3, align 8
  %18 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %17, i32 0, i32 1
  %19 = load %struct.perf_sched*, %struct.perf_sched** %18, align 8
  store %struct.perf_sched* %19, %struct.perf_sched** %5, align 8
  %20 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %3, align 8
  %21 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = call i32 @zfree(%struct.sched_thread_parms** %3)
  %24 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %25 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %26 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @PR_SET_NAME, align 4
  %30 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %31 = call i32 @prctl(i32 %29, i8* %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  ret i8* null

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %75, %35
  %37 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %38 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %37, i32 0, i32 6
  %39 = call i64 @sem_post(i32* %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @BUG_ON(i64 %40)
  %42 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %43 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %42, i32 0, i32 1
  %44 = call i64 @pthread_mutex_lock(i32* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @BUG_ON(i64 %45)
  %47 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %48 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %47, i32 0, i32 1
  %49 = call i64 @pthread_mutex_unlock(i32* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @BUG_ON(i64 %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @get_cpu_usage_nsec_self(i32 %52)
  store i64 %53, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %72, %36
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %57 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %63 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %65 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %66 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @perf_sched__process_event(%struct.perf_sched* %64, i32 %70)
  br label %72

72:                                               ; preds = %60
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %54

75:                                               ; preds = %54
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @get_cpu_usage_nsec_self(i32 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %82 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %84 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %83, i32 0, i32 3
  %85 = call i64 @sem_post(i32* %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @BUG_ON(i64 %86)
  %88 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %89 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %88, i32 0, i32 0
  %90 = call i64 @pthread_mutex_lock(i32* %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @BUG_ON(i64 %91)
  %93 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %94 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %93, i32 0, i32 0
  %95 = call i64 @pthread_mutex_unlock(i32* %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @BUG_ON(i64 %96)
  br label %36
}

declare dso_local i32 @zfree(%struct.sched_thread_parms**) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @prctl(i32, i8*) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @get_cpu_usage_nsec_self(i32) #1

declare dso_local i32 @perf_sched__process_event(%struct.perf_sched*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
