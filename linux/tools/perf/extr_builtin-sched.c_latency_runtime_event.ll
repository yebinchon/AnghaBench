; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_latency_runtime_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_latency_runtime_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i8* }
%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.work_atoms = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@MAX_CPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"in-event: Internal tree error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, %struct.evsel*, %struct.perf_sample*, %struct.machine*)* @latency_runtime_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latency_runtime_event(%struct.perf_sched* %0, %struct.evsel* %1, %struct.perf_sample* %2, %struct.machine* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_sched*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.work_atoms*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %6, align 8
  store %struct.evsel* %1, %struct.evsel** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  %17 = load %struct.evsel*, %struct.evsel** %7, align 8
  %18 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %19 = call i8* @perf_evsel__intval(%struct.evsel* %17, %struct.perf_sample* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %10, align 8
  %20 = load %struct.evsel*, %struct.evsel** %7, align 8
  %21 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %22 = call i8* @perf_evsel__intval(%struct.evsel* %20, %struct.perf_sample* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %11, align 8
  %23 = load %struct.machine*, %struct.machine** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call %struct.thread* @machine__findnew_thread(%struct.machine* %23, i32 -1, i8* %24)
  store %struct.thread* %25, %struct.thread** %12, align 8
  %26 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %27 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %26, i32 0, i32 1
  %28 = load %struct.thread*, %struct.thread** %12, align 8
  %29 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %30 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %29, i32 0, i32 0
  %31 = call %struct.work_atoms* @thread_atoms_search(i32* %27, %struct.thread* %28, i32* %30)
  store %struct.work_atoms* %31, %struct.work_atoms** %13, align 8
  %32 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %14, align 8
  %35 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %38 = load %struct.thread*, %struct.thread** %12, align 8
  %39 = icmp eq %struct.thread* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %87

41:                                               ; preds = %4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @MAX_CPUS, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ true, %41 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %53 = icmp ne %struct.work_atoms* %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %48
  %55 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %56 = load %struct.thread*, %struct.thread** %12, align 8
  %57 = call i64 @thread_atoms_insert(%struct.perf_sched* %55, %struct.thread* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %83

60:                                               ; preds = %54
  %61 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %62 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %61, i32 0, i32 1
  %63 = load %struct.thread*, %struct.thread** %12, align 8
  %64 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %65 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %64, i32 0, i32 0
  %66 = call %struct.work_atoms* @thread_atoms_search(i32* %62, %struct.thread* %63, i32* %65)
  store %struct.work_atoms* %66, %struct.work_atoms** %13, align 8
  %67 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %68 = icmp ne %struct.work_atoms* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %83

71:                                               ; preds = %60
  %72 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i64 @add_sched_out_event(%struct.work_atoms* %72, i8 signext 82, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %83

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @add_runtime_event(%struct.work_atoms* %79, i8* %80, i8* %81)
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %78, %76, %69, %59
  %84 = load %struct.thread*, %struct.thread** %12, align 8
  %85 = call i32 @thread__put(%struct.thread* %84)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %40
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i8* @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i8*) #1

declare dso_local %struct.work_atoms* @thread_atoms_search(i32*, %struct.thread*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @thread_atoms_insert(%struct.perf_sched*, %struct.thread*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @add_sched_out_event(%struct.work_atoms*, i8 signext, i8*) #1

declare dso_local i32 @add_runtime_event(%struct.work_atoms*, i8*, i8*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
