; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_hex_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_hex_fmt.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_hex_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_hex_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca %struct.trace_event*, align 8
  %9 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 4
  %12 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  store %struct.trace_array* %12, %struct.trace_array** %4, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 3
  store %struct.trace_seq* %14, %struct.trace_seq** %5, align 8
  store i8 10, i8* %6, align 1
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 2
  %17 = load %struct.trace_entry*, %struct.trace_entry** %16, align 8
  store %struct.trace_entry* %17, %struct.trace_entry** %7, align 8
  %18 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %19 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %1
  %25 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %26 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %27 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %25, i32 %28)
  %30 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %30, i32 %33)
  %35 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %35, i32 %38)
  %40 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %41 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %48 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.trace_event* @ftrace_find_event(i32 %49)
  store %struct.trace_event* %50, %struct.trace_event** %8, align 8
  %51 = load %struct.trace_event*, %struct.trace_event** %8, align 8
  %52 = icmp ne %struct.trace_event* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.trace_event*, %struct.trace_event** %8, align 8
  %55 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.trace_iterator*, i32, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i32, %struct.trace_event*)** %57, align 8
  %59 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %60 = load %struct.trace_event*, %struct.trace_event** %8, align 8
  %61 = call i32 %58(%struct.trace_iterator* %59, i32 0, %struct.trace_event* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %70 = load i8, i8* %6, align 1
  %71 = call i32 @SEQ_PUT_FIELD(%struct.trace_seq* %69, i8 zeroext %70)
  %72 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %73 = call i32 @trace_handle_return(%struct.trace_seq* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %65, %43
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq*, i32) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

declare dso_local i32 @SEQ_PUT_FIELD(%struct.trace_seq*, i8 zeroext) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
