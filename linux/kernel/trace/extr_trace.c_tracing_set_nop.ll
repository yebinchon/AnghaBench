; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_set_nop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_set_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.trace_array*)*, i32 }
%struct.trace_array = type { %struct.TYPE_2__* }

@nop_trace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @tracing_set_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_set_nop(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %3 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %4 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, @nop_trace
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %10 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %16 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.trace_array*)*, i32 (%struct.trace_array*)** %18, align 8
  %20 = icmp ne i32 (%struct.trace_array*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %8
  %22 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %23 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.trace_array*)*, i32 (%struct.trace_array*)** %25, align 8
  %27 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %28 = call i32 %26(%struct.trace_array* %27)
  br label %29

29:                                               ; preds = %21, %8
  %30 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %31 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %30, i32 0, i32 0
  store %struct.TYPE_2__* @nop_trace, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %29, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
