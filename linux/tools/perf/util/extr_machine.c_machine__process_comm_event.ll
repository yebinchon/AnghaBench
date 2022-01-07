; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__process_comm_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__process_comm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.perf_sample = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PERF_RECORD_MISC_COMM_EXEC = common dso_local global i32 0, align 4
@dump_trace = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"problem processing PERF_RECORD_COMM, skipping event.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_comm_event(%struct.machine* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %10 = load %struct.machine*, %struct.machine** %4, align 8
  %11 = load %union.perf_event*, %union.perf_event** %5, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %union.perf_event*, %union.perf_event** %5, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.thread* @machine__findnew_thread(%struct.machine* %10, i32 %14, i32 %18)
  store %struct.thread* %19, %struct.thread** %7, align 8
  %20 = load %union.perf_event*, %union.perf_event** %5, align 8
  %21 = bitcast %union.perf_event* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PERF_RECORD_MISC_COMM_EXEC, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.machine*, %struct.machine** %4, align 8
  %30 = getelementptr inbounds %struct.machine, %struct.machine* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %3
  %32 = load i64, i64* @dump_trace, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %union.perf_event*, %union.perf_event** %5, align 8
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @perf_event__fprintf_comm(%union.perf_event* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.thread*, %struct.thread** %7, align 8
  %40 = icmp eq %struct.thread* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load %struct.thread*, %struct.thread** %7, align 8
  %43 = load %union.perf_event*, %union.perf_event** %5, align 8
  %44 = bitcast %union.perf_event* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %48 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @__thread__set_comm(%struct.thread* %42, i32 %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41, %38
  %54 = call i32 @dump_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %41
  %56 = load %struct.thread*, %struct.thread** %7, align 8
  %57 = call i32 @thread__put(%struct.thread* %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @perf_event__fprintf_comm(%union.perf_event*, i32) #1

declare dso_local i64 @__thread__set_comm(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @dump_printf(i8*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
