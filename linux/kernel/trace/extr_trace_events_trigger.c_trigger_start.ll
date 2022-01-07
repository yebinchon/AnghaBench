; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_trigger_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_trigger_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.trace_event_file = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SHOW_AVAILABLE_TRIGGERS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @trigger_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trigger_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.trace_event_file*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 @mutex_lock(i32* @event_mutex)
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.trace_event_file* @event_file_data(i32 %10)
  store %struct.trace_event_file* %11, %struct.trace_event_file** %6, align 8
  %12 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %13 = icmp ne %struct.trace_event_file* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %3, align 8
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %24 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %23, i32 0, i32 0
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** @SHOW_AVAILABLE_TRIGGERS, align 8
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ null, %33 ]
  store i8* %35, i8** %3, align 8
  br label %42

36:                                               ; preds = %22
  %37 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %38 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %37, i32 0, i32 0
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @seq_list_start(i32* %38, i32 %40)
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %36, %34, %18
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.trace_event_file* @event_file_data(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i8* @seq_list_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
