; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_event_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_event_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i32 }
%struct.trace_array = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_event_file* (%struct.trace_array*, i8*, i8*)* @event_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_event_file* @event_file(%struct.trace_array* %0, i8* %1, i8* %2) #0 {
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
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.trace_event_file* @ERR_PTR(i32 %17)
  store %struct.trace_event_file* %18, %struct.trace_event_file** %4, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  store %struct.trace_event_file* %20, %struct.trace_event_file** %4, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  ret %struct.trace_event_file* %22
}

declare dso_local %struct.trace_event_file* @__find_event_file(%struct.trace_array*, i8*, i8*) #1

declare dso_local %struct.trace_event_file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
