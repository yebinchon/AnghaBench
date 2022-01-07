; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_fill_pipe_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_fill_pipe_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_NO_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.trace_iterator*)* @tracing_fill_pipe_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tracing_fill_pipe_page(i64 %0, %struct.trace_iterator* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.trace_iterator* %1, %struct.trace_iterator** %4, align 8
  br label %8

8:                                                ; preds = %69, %2
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %15 = call i32 @print_trace_line(%struct.trace_iterator* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %16, i32 0, i32 1
  %18 = call i64 @trace_seq_has_overflowed(%struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  br label %70

26:                                               ; preds = %8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %33 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  br label %70

36:                                               ; preds = %26
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 1
  %39 = call i32 @trace_seq_used(%struct.TYPE_5__* %38)
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %49 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  br label %70

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @TRACE_TYPE_NO_CONSUME, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %58 = call i32 @trace_consume(%struct.trace_iterator* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %3, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %64 = call i32 @trace_find_next_entry_inc(%struct.trace_iterator* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  store i64 0, i64* %3, align 8
  %67 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %68 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %70

69:                                               ; preds = %59
  br label %8

70:                                               ; preds = %66, %46, %30, %20
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @print_trace_line(%struct.trace_iterator*) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.TYPE_5__*) #1

declare dso_local i32 @trace_seq_used(%struct.TYPE_5__*) #1

declare dso_local i32 @trace_consume(%struct.trace_iterator*) #1

declare dso_local i32 @trace_find_next_entry_inc(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
