; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_insert_eval_map.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_insert_eval_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.trace_eval_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.trace_eval_map**, i32)* @trace_insert_eval_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_insert_eval_map(%struct.module* %0, %struct.trace_eval_map** %1, i32 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.trace_eval_map**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_eval_map**, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.trace_eval_map** %1, %struct.trace_eval_map*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %20

11:                                               ; preds = %3
  %12 = load %struct.trace_eval_map**, %struct.trace_eval_map*** %5, align 8
  store %struct.trace_eval_map** %12, %struct.trace_eval_map*** %7, align 8
  %13 = load %struct.trace_eval_map**, %struct.trace_eval_map*** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @trace_event_eval_update(%struct.trace_eval_map** %13, i32 %14)
  %16 = load %struct.module*, %struct.module** %4, align 8
  %17 = load %struct.trace_eval_map**, %struct.trace_eval_map*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @trace_insert_eval_map_file(%struct.module* %16, %struct.trace_eval_map** %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @trace_event_eval_update(%struct.trace_eval_map**, i32) #1

declare dso_local i32 @trace_insert_eval_map_file(%struct.module*, %struct.trace_eval_map**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
