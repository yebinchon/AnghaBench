; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_trace_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_trace_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_entry*, %struct.trace_seq, %struct.trace_array* }
%struct.trace_entry = type { i32 }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i64 }
%struct.trace_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_iterator*, i64, %struct.trace_event*)* }

@TRACE_ITER_SYM_MASK = common dso_local global i64 0, align 8
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_trace_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_trace_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca %struct.trace_event*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 3
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %4, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 2
  store %struct.trace_seq* %13, %struct.trace_seq** %5, align 8
  %14 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %15 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TRACE_ITER_SYM_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 1
  %21 = load %struct.trace_entry*, %struct.trace_entry** %20, align 8
  store %struct.trace_entry* %21, %struct.trace_entry** %7, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %23 = call i32 @test_cpu_buff_start(%struct.trace_iterator* %22)
  %24 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %25 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.trace_event* @ftrace_find_event(i32 %26)
  store %struct.trace_event* %27, %struct.trace_event** %8, align 8
  %28 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %29 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %44 = call i32 @trace_print_lat_context(%struct.trace_iterator* %43)
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %47 = call i32 @trace_print_context(%struct.trace_iterator* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %51 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %54, i32* %2, align 4
  br label %76

55:                                               ; preds = %49
  %56 = load %struct.trace_event*, %struct.trace_event** %8, align 8
  %57 = icmp ne %struct.trace_event* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.trace_event*, %struct.trace_event** %8, align 8
  %60 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.trace_iterator*, i64, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i64, %struct.trace_event*)** %62, align 8
  %64 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.trace_event*, %struct.trace_event** %8, align 8
  %67 = call i32 %63(%struct.trace_iterator* %64, i64 %65, %struct.trace_event* %66)
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %55
  %69 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %70 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %71 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @trace_seq_printf(%struct.trace_seq* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %75 = call i32 @trace_handle_return(%struct.trace_seq* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %58, %53
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @test_cpu_buff_start(%struct.trace_iterator*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

declare dso_local i32 @trace_print_lat_context(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_context(%struct.trace_iterator*) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
