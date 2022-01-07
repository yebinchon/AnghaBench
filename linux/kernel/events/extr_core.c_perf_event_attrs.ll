; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }
%struct.perf_event = type { %struct.perf_event_attr }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_event_attr* @perf_event_attrs(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %5 = icmp ne %struct.perf_event* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.perf_event_attr* @ERR_PTR(i32 %8)
  store %struct.perf_event_attr* %9, %struct.perf_event_attr** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  store %struct.perf_event_attr* %12, %struct.perf_event_attr** %2, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  ret %struct.perf_event_attr* %14
}

declare dso_local %struct.perf_event_attr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
