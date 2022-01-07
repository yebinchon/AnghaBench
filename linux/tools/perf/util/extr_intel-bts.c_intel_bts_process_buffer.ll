; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts_queue = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.auxtrace_buffer = type { i64, i64, i64, %struct.branch*, %struct.branch* }
%struct.branch = type { i32, i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts_queue*, %struct.auxtrace_buffer*, %struct.thread*)* @intel_bts_process_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_process_buffer(%struct.intel_bts_queue* %0, %struct.auxtrace_buffer* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_bts_queue*, align 8
  %6 = alloca %struct.auxtrace_buffer*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.branch*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_bts_queue* %0, %struct.intel_bts_queue** %5, align 8
  store %struct.auxtrace_buffer* %1, %struct.auxtrace_buffer** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i64 8, i64* %10, align 8
  %13 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %14 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %18, i32 0, i32 4
  %20 = load %struct.branch*, %struct.branch** %19, align 8
  %21 = icmp ne %struct.branch* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %26, i32 0, i32 4
  %28 = load %struct.branch*, %struct.branch** %27, align 8
  store %struct.branch* %28, %struct.branch** %8, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %33, i32 0, i32 3
  %35 = load %struct.branch*, %struct.branch** %34, align 8
  store %struct.branch* %35, %struct.branch** %8, align 8
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %38 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %123

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %115, %44
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %45
  %50 = load %struct.branch*, %struct.branch** %8, align 8
  %51 = getelementptr inbounds %struct.branch, %struct.branch* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.branch*, %struct.branch** %8, align 8
  %56 = getelementptr inbounds %struct.branch, %struct.branch* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %115

60:                                               ; preds = %54, %49
  %61 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %62 = load %struct.branch*, %struct.branch** %8, align 8
  %63 = call i32 @intel_bts_get_branch_type(%struct.intel_bts_queue* %61, %struct.branch* %62)
  %64 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %65 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %60
  %72 = load %struct.thread*, %struct.thread** %7, align 8
  %73 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %74 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %77 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.branch*, %struct.branch** %8, align 8
  %80 = getelementptr inbounds %struct.branch, %struct.branch* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le64_to_cpu(i32 %81)
  %83 = load %struct.branch*, %struct.branch** %8, align 8
  %84 = getelementptr inbounds %struct.branch, %struct.branch* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le64_to_cpu(i32 %85)
  %87 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %88 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 @thread_stack__event(%struct.thread* %72, i32 %75, i32 %78, i32 %82, i32 %86, i32 %90, i64 %94)
  br label %96

96:                                               ; preds = %71, %60
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %102 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  br label %115

107:                                              ; preds = %99, %96
  %108 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %5, align 8
  %109 = load %struct.branch*, %struct.branch** %8, align 8
  %110 = call i32 @intel_bts_synth_branch_sample(%struct.intel_bts_queue* %108, %struct.branch* %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %121

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %106, %59
  %116 = load %struct.branch*, %struct.branch** %8, align 8
  %117 = getelementptr inbounds %struct.branch, %struct.branch* %116, i64 1
  store %struct.branch* %117, %struct.branch** %8, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %9, align 8
  br label %45

121:                                              ; preds = %113, %45
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %43
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @intel_bts_get_branch_type(%struct.intel_bts_queue*, %struct.branch*) #1

declare dso_local i32 @thread_stack__event(%struct.thread*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @intel_bts_synth_branch_sample(%struct.intel_bts_queue*, %struct.branch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
