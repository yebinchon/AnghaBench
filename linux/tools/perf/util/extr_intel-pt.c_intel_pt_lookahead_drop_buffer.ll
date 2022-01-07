; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_lookahead_drop_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_lookahead_drop_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.auxtrace_buffer*, %struct.auxtrace_buffer* }
%struct.auxtrace_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_queue*, %struct.auxtrace_buffer*)* @intel_pt_lookahead_drop_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_lookahead_drop_buffer(%struct.intel_pt_queue* %0, %struct.auxtrace_buffer* %1) #0 {
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.auxtrace_buffer*, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  store %struct.auxtrace_buffer* %1, %struct.auxtrace_buffer** %4, align 8
  %5 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %6 = icmp ne %struct.auxtrace_buffer* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %9 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %9, i32 0, i32 1
  %11 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %12 = icmp eq %struct.auxtrace_buffer* %8, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %15 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %15, i32 0, i32 0
  %17 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %16, align 8
  %18 = icmp eq %struct.auxtrace_buffer* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %7, %2
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %22 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %21)
  br label %23

23:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
