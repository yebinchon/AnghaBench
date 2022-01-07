; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_find_event_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_find_event_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.trace_array = type { i32 }

@TRACE_EVENT_FL_IGNORE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trace_event_file* @find_event_file(%struct.trace_array* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.trace_event_file*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trace_event_file*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.trace_event_file* @__find_event_file(%struct.trace_array* %9, i8* %10, i8* %11)
  store %struct.trace_event_file* %12, %struct.trace_event_file** %8, align 8
  %13 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %14 = icmp ne %struct.trace_event_file* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %17 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %26 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TRACE_EVENT_FL_IGNORE_ENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %15, %3
  store %struct.trace_event_file* null, %struct.trace_event_file** %4, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  store %struct.trace_event_file* %35, %struct.trace_event_file** %4, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  ret %struct.trace_event_file* %37
}

declare dso_local %struct.trace_event_file* @__find_event_file(%struct.trace_array*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
