; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_add_tracer_options.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_add_tracer_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.tracer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, %struct.tracer*)* @add_tracer_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tracer_options(%struct.trace_array* %0, %struct.tracer* %1) #0 {
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.tracer*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  store %struct.tracer* %1, %struct.tracer** %4, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %6 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  %11 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %12 = load %struct.tracer*, %struct.tracer** %4, align 8
  %13 = call i32 @create_trace_option_files(%struct.trace_array* %11, %struct.tracer* %12)
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @create_trace_option_files(%struct.trace_array*, %struct.tracer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
