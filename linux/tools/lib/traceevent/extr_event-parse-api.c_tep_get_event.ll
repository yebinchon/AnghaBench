; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse-api.c_tep_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse-api.c_tep_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_handle = type { i32, %struct.tep_event** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_event* @tep_get_event(%struct.tep_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.tep_event*, align 8
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %7 = icmp ne %struct.tep_handle* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %10 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %9, i32 0, i32 1
  %11 = load %struct.tep_event**, %struct.tep_event*** %10, align 8
  %12 = icmp ne %struct.tep_event** %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %16 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %21 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %20, i32 0, i32 1
  %22 = load %struct.tep_event**, %struct.tep_event*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tep_event*, %struct.tep_event** %22, i64 %24
  %26 = load %struct.tep_event*, %struct.tep_event** %25, align 8
  store %struct.tep_event* %26, %struct.tep_event** %3, align 8
  br label %28

27:                                               ; preds = %13, %8, %2
  store %struct.tep_event* null, %struct.tep_event** %3, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  ret %struct.tep_event* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
