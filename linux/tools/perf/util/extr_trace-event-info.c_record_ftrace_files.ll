; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_record_ftrace_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_record_ftrace_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_path = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't get tracing/events/ftrace\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracepoint_path*)* @record_ftrace_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_ftrace_files(%struct.tracepoint_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tracepoint_path*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.tracepoint_path* %0, %struct.tracepoint_path** %3, align 8
  %6 = call i8* @get_events_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.tracepoint_path*, %struct.tracepoint_path** %3, align 8
  %16 = call i32 @copy_event_system(i8* %14, %struct.tracepoint_path* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @put_tracing_file(i8* %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i8* @get_events_file(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @copy_event_system(i8*, %struct.tracepoint_path*) #1

declare dso_local i32 @put_tracing_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
