; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_raw_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_raw_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_entry*, %struct.trace_seq, %struct.trace_array* }
%struct.trace_entry = type { i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i32 }
%struct.trace_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* }

@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d %d %llu \00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d ?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_raw_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_raw_fmt(%struct.trace_iterator* %0) #0 {
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
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %24 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %25 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %22, %1
  %35 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %36 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %39, i32* %2, align 4
  br label %64

40:                                               ; preds = %34
  %41 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %42 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.trace_event* @ftrace_find_event(i32 %43)
  store %struct.trace_event* %44, %struct.trace_event** %7, align 8
  %45 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %46 = icmp ne %struct.trace_event* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %49 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.trace_iterator*, i32, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i32, %struct.trace_event*)** %51, align 8
  %53 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %54 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %55 = call i32 %52(%struct.trace_iterator* %53, i32 0, %struct.trace_event* %54)
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %58 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %59 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %63 = call i32 @trace_handle_return(%struct.trace_seq* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %56, %47, %38
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, ...) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
