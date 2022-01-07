; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_func_help_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_func_help_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i32 }
%struct.seq_file = type { i32 }

@TRACE_ITER_RECORD_TGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"#           TASK-PID   %s  CPU#   TIMESTAMP  FUNCTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TGID     \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"#              | |     %s    |       |         |\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  |      \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_buffer*, %struct.seq_file*, i32)* @print_func_help_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_func_help_header(%struct.trace_buffer* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_buffer*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trace_buffer* %0, %struct.trace_buffer** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @TRACE_ITER_RECORD_TGID, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %13 = call i32 @print_event_info(%struct.trace_buffer* %11, %struct.seq_file* %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  ret void
}

declare dso_local i32 @print_event_info(%struct.trace_buffer*, %struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
