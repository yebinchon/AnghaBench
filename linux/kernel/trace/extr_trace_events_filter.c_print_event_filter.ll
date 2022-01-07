; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_print_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_print_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i32 }
%struct.trace_seq = type { i32 }
%struct.event_filter = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_event_filter(%struct.trace_event_file* %0, %struct.trace_seq* %1) #0 {
  %3 = alloca %struct.trace_event_file*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.event_filter*, align 8
  store %struct.trace_event_file* %0, %struct.trace_event_file** %3, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %4, align 8
  %6 = load %struct.trace_event_file*, %struct.trace_event_file** %3, align 8
  %7 = call %struct.event_filter* @event_filter(%struct.trace_event_file* %6)
  store %struct.event_filter* %7, %struct.event_filter** %5, align 8
  %8 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %9 = icmp ne %struct.event_filter* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %12 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %17 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %18 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %24

21:                                               ; preds = %10, %2
  %22 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %23 = call i32 @trace_seq_puts(%struct.trace_seq* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  ret void
}

declare dso_local %struct.event_filter* @event_filter(%struct.trace_event_file*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
