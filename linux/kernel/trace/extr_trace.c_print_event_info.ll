; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_event_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"# entries-in-buffer/entries-written: %lu/%lu   #P:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_buffer*, %struct.seq_file*)* @print_event_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_info(%struct.trace_buffer* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.trace_buffer*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.trace_buffer* %0, %struct.trace_buffer** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.trace_buffer*, %struct.trace_buffer** %3, align 8
  %8 = call i32 @get_total_entries(%struct.trace_buffer* %7, i64* %5, i64* %6)
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 (...) @num_online_cpus()
  %13 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11, i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @get_total_entries(%struct.trace_buffer*, i64*, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
