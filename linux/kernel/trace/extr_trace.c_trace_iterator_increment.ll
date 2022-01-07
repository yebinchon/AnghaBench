; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_iterator_increment.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_iterator_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32 }
%struct.ring_buffer_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*)* @trace_iterator_increment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_iterator_increment(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.ring_buffer_iter*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %4 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %5 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ring_buffer_iter* @trace_buffer_iter(%struct.trace_iterator* %4, i32 %7)
  store %struct.ring_buffer_iter* %8, %struct.ring_buffer_iter** %3, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %14 = icmp ne %struct.ring_buffer_iter* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %17 = call i32 @ring_buffer_read(%struct.ring_buffer_iter* %16, i32* null)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.ring_buffer_iter* @trace_buffer_iter(%struct.trace_iterator*, i32) #1

declare dso_local i32 @ring_buffer_read(%struct.ring_buffer_iter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
