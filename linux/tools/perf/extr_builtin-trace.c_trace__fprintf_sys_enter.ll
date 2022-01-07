; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_sys_enter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_sys_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i32, i32 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.thread_trace = type { i32 }
%struct.thread = type { i32 }
%struct.syscall = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %struct.evsel*, %struct.perf_sample*)* @trace__fprintf_sys_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__fprintf_sys_enter(%struct.trace* %0, %struct.evsel* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.thread_trace*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.syscall*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %17 = load %struct.evsel*, %struct.evsel** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %20 = call i32 @perf_evsel__sc_tp_uint(%struct.evsel* %17, i32 %18, %struct.perf_sample* %19)
  store i32 %20, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %21 = load %struct.trace*, %struct.trace** %5, align 8
  %22 = load %struct.evsel*, %struct.evsel** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.syscall* @trace__syscall_info(%struct.trace* %21, %struct.evsel* %22, i32 %23)
  store %struct.syscall* %24, %struct.syscall** %12, align 8
  store i8* null, i8** %15, align 8
  %25 = load %struct.syscall*, %struct.syscall** %12, align 8
  %26 = icmp eq %struct.syscall* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load %struct.trace*, %struct.trace** %5, align 8
  %30 = getelementptr inbounds %struct.trace, %struct.trace* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.thread* @machine__findnew_thread(i32 %31, i32 %34, i32 %37)
  store %struct.thread* %38, %struct.thread** %9, align 8
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = load %struct.trace*, %struct.trace** %5, align 8
  %41 = getelementptr inbounds %struct.trace, %struct.trace* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.thread_trace* @thread__trace(%struct.thread* %39, i32 %42)
  store %struct.thread_trace* %43, %struct.thread_trace** %8, align 8
  %44 = load %struct.thread_trace*, %struct.thread_trace** %8, align 8
  %45 = icmp eq %struct.thread_trace* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %71

47:                                               ; preds = %28
  %48 = load %struct.evsel*, %struct.evsel** %6, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %51 = call i8* @perf_evsel__sc_tp_ptr(%struct.evsel* %48, i8* %49, %struct.perf_sample* %50)
  store i8* %51, i8** %14, align 8
  %52 = load %struct.syscall*, %struct.syscall** %12, align 8
  %53 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %54 = load %struct.trace*, %struct.trace** %5, align 8
  %55 = getelementptr inbounds %struct.trace, %struct.trace* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @syscall__augmented_args(%struct.syscall* %52, %struct.perf_sample* %53, i32* %16, i32 %56)
  store i8* %57, i8** %15, align 8
  %58 = load %struct.syscall*, %struct.syscall** %12, align 8
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.trace*, %struct.trace** %5, align 8
  %64 = load %struct.thread*, %struct.thread** %9, align 8
  %65 = call i32 @syscall__scnprintf_args(%struct.syscall* %58, i8* %59, i32 1024, i8* %60, i8* %61, i32 %62, %struct.trace* %63, %struct.thread* %64)
  %66 = load %struct.trace*, %struct.trace** %5, align 8
  %67 = getelementptr inbounds %struct.trace, %struct.trace* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %69)
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %47, %46
  %72 = load %struct.thread*, %struct.thread** %9, align 8
  %73 = call i32 @thread__put(%struct.thread* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %27
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @perf_evsel__sc_tp_uint(%struct.evsel*, i32, %struct.perf_sample*) #1

declare dso_local %struct.syscall* @trace__syscall_info(%struct.trace*, %struct.evsel*, i32) #1

declare dso_local %struct.thread* @machine__findnew_thread(i32, i32, i32) #1

declare dso_local %struct.thread_trace* @thread__trace(%struct.thread*, i32) #1

declare dso_local i8* @perf_evsel__sc_tp_ptr(%struct.evsel*, i8*, %struct.perf_sample*) #1

declare dso_local i8* @syscall__augmented_args(%struct.syscall*, %struct.perf_sample*, i32*, i32) #1

declare dso_local i32 @syscall__scnprintf_args(%struct.syscall*, i8*, i32, i8*, i8*, i32, %struct.trace*, %struct.thread*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
