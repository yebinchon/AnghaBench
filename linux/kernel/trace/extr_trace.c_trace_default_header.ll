; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_default_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_default_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32, i32, %struct.trace_array* }
%struct.trace_array = type { i64 }

@TRACE_ITER_CONTEXT_INFO = common dso_local global i64 0, align 8
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@TRACE_ITER_VERBOSE = common dso_local global i64 0, align 8
@TRACE_ITER_IRQ_INFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_default_header(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  store %struct.trace_iterator* %8, %struct.trace_iterator** %3, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 2
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %4, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @TRACE_ITER_CONTEXT_INFO, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %29 = call i64 @trace_empty(%struct.trace_iterator* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %70

32:                                               ; preds = %27
  %33 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %34 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %35 = call i32 @print_trace_header(%struct.seq_file* %33, %struct.trace_iterator* %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @TRACE_ITER_VERBOSE, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %42 = call i32 @print_lat_help_header(%struct.seq_file* %41)
  br label %43

43:                                               ; preds = %40, %32
  br label %70

44:                                               ; preds = %20
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @TRACE_ITER_VERBOSE, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @TRACE_ITER_IRQ_INFO, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %56 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @print_func_help_header_irq(i32 %57, %struct.seq_file* %58, i64 %59)
  br label %68

61:                                               ; preds = %49
  %62 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %63 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @print_func_help_header(i32 %64, %struct.seq_file* %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %19, %31, %69, %43
  ret void
}

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_header(%struct.seq_file*, %struct.trace_iterator*) #1

declare dso_local i32 @print_lat_help_header(%struct.seq_file*) #1

declare dso_local i32 @print_func_help_header_irq(i32, %struct.seq_file*, i64) #1

declare dso_local i32 @print_func_help_header(i32, %struct.seq_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
