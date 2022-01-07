; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__snapshot_finish.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__snapshot_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32 (%struct.auxtrace_record*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_record__snapshot_finish(%struct.auxtrace_record* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auxtrace_record*, align 8
  %5 = alloca i32, align 4
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %10 = icmp ne %struct.auxtrace_record* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %13 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %12, i32 0, i32 0
  %14 = load i32 (%struct.auxtrace_record*)*, i32 (%struct.auxtrace_record*)** %13, align 8
  %15 = icmp ne i32 (%struct.auxtrace_record*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %18 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %17, i32 0, i32 0
  %19 = load i32 (%struct.auxtrace_record*)*, i32 (%struct.auxtrace_record*)** %18, align 8
  %20 = load %struct.auxtrace_record*, %struct.auxtrace_record** %4, align 8
  %21 = call i32 %19(%struct.auxtrace_record* %20)
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
