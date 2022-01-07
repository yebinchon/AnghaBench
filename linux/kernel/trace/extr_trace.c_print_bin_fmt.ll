; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_bin_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_bin_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_entry*, %struct.trace_seq, %struct.trace_array* }
%struct.trace_entry = type { i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i32 }
%struct.trace_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* }

@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_bin_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_bin_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.trace_event*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 4
  %10 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  store %struct.trace_array* %10, %struct.trace_array** %4, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 3
  store %struct.trace_seq* %12, %struct.trace_seq** %5, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 2
  %15 = load %struct.trace_entry*, %struct.trace_entry** %14, align 8
  store %struct.trace_entry* %15, %struct.trace_entry** %6, align 8
  %16 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %17 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %24 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %25 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SEQ_PUT_FIELD(%struct.trace_seq* %23, i32 %26)
  %28 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %29 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %30 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SEQ_PUT_FIELD(%struct.trace_seq* %28, i32 %31)
  %33 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %34 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %35 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SEQ_PUT_FIELD(%struct.trace_seq* %33, i32 %36)
  %38 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %39 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %46 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.trace_event* @ftrace_find_event(i32 %47)
  store %struct.trace_event* %48, %struct.trace_event** %7, align 8
  %49 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %50 = icmp ne %struct.trace_event* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %53 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.trace_iterator*, i32, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i32, %struct.trace_event*)** %55, align 8
  %57 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %58 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %59 = call i32 %56(%struct.trace_iterator* %57, i32 0, %struct.trace_event* %58)
  br label %62

60:                                               ; preds = %44
  %61 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = phi i32 [ %59, %51 ], [ %61, %60 ]
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %41
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @SEQ_PUT_FIELD(%struct.trace_seq*, i32) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
