; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_fn_trace.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_fn_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 }
%struct.ftrace_entry = type { i64, i64 }

@TRACE_ITER_PRINT_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" <-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* @trace_fn_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_fn_trace(%struct.trace_iterator* %0, i32 %1, %struct.trace_event* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca %struct.ftrace_entry*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trace_event* %2, %struct.trace_event** %6, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  store %struct.trace_seq* %10, %struct.trace_seq** %8, align 8
  %11 = load %struct.ftrace_entry*, %struct.ftrace_entry** %7, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_assign_type(%struct.ftrace_entry* %11, i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %17 = load %struct.ftrace_entry*, %struct.ftrace_entry** %7, align 8
  %18 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @seq_print_ip_sym(%struct.trace_seq* %16, i64 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TRACE_ITER_PRINT_PARENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load %struct.ftrace_entry*, %struct.ftrace_entry** %7, align 8
  %28 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %33 = call i32 @trace_seq_puts(%struct.trace_seq* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %35 = load %struct.ftrace_entry*, %struct.ftrace_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @seq_print_ip_sym(%struct.trace_seq* %34, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %26, %3
  %41 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %42 = call i32 @trace_seq_putc(%struct.trace_seq* %41, i8 signext 10)
  %43 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %44 = call i32 @trace_handle_return(%struct.trace_seq* %43)
  ret i32 %44
}

declare dso_local i32 @trace_assign_type(%struct.ftrace_entry*, i32) #1

declare dso_local i32 @seq_print_ip_sym(%struct.trace_seq*, i64, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
