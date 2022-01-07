; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_set_pid_tid_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_set_pid_tid_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, i64 }
%struct.auxtrace_queue = type { i32, i32, %struct.intel_pt_queue* }
%struct.intel_pt_queue = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt*, %struct.auxtrace_queue*)* @intel_pt_set_pid_tid_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_set_pid_tid_cpu(%struct.intel_pt* %0, %struct.auxtrace_queue* %1) #0 {
  %3 = alloca %struct.intel_pt*, align 8
  %4 = alloca %struct.auxtrace_queue*, align 8
  %5 = alloca %struct.intel_pt_queue*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %3, align 8
  store %struct.auxtrace_queue* %1, %struct.auxtrace_queue** %4, align 8
  %6 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %4, align 8
  %7 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %6, i32 0, i32 2
  %8 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %7, align 8
  store %struct.intel_pt_queue* %8, %struct.intel_pt_queue** %5, align 8
  %9 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %4, align 8
  %10 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %15 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13, %2
  %19 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %20 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %23 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @machine__get_current_tid(i32 %21, i32 %24)
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %27 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %29 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @thread__zput(%struct.TYPE_3__* %30)
  br label %32

32:                                               ; preds = %18, %13
  %33 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %34 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %39 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %44 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %47 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_3__* @machine__find_thread(i32 %45, i32 -1, i32 %48)
  %50 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %51 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %50, i32 0, i32 1
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %51, align 8
  br label %52

52:                                               ; preds = %42, %37, %32
  %53 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %54 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %59 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %64 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %4, align 8
  %66 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %71 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %76 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %57
  br label %78

78:                                               ; preds = %77, %52
  ret void
}

declare dso_local i32 @machine__get_current_tid(i32, i32) #1

declare dso_local i32 @thread__zput(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @machine__find_thread(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
