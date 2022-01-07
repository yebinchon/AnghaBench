; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_latency_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_latency_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32, %struct.trace_array* }
%struct.trace_array = type { i32 }

@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@TRACE_ITER_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_latency_header(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_array*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i32 0, i32 0
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  store %struct.trace_iterator* %7, %struct.trace_iterator** %3, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 1
  %10 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  store %struct.trace_array* %10, %struct.trace_array** %4, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %12 = call i64 @trace_empty(%struct.trace_iterator* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %25 = call i32 @print_trace_header(%struct.seq_file* %23, %struct.trace_iterator* %24)
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %28 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TRACE_ITER_VERBOSE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %35 = call i32 @print_lat_help_header(%struct.seq_file* %34)
  br label %36

36:                                               ; preds = %14, %33, %26
  ret void
}

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_header(%struct.seq_file*, %struct.trace_iterator*) #1

declare dso_local i32 @print_lat_help_header(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
