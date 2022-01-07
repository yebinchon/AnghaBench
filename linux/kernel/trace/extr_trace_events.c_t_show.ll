; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_t_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_t_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.trace_event_file = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRACE_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @t_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_event_file*, align 8
  %6 = alloca %struct.trace_event_call*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.trace_event_file*
  store %struct.trace_event_file* %8, %struct.trace_event_file** %5, align 8
  %9 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %10 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %9, i32 0, i32 0
  %11 = load %struct.trace_event_call*, %struct.trace_event_call** %10, align 8
  store %struct.trace_event_call* %11, %struct.trace_event_call** %6, align 8
  %12 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  %13 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRACE_SYSTEM, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  %23 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  %31 = call i32 @trace_event_name(%struct.trace_event_call* %30)
  %32 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  ret i32 0
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @trace_event_name(%struct.trace_event_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
