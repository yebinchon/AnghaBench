; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_aux_output_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_aux_output_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.perf_event*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_event*)* @perf_aux_output_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_aux_output_match(%struct.perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %7 = call i32 @has_aux(%struct.perf_event* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %14, align 8
  %16 = icmp ne i32 (%struct.perf_event*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %26

18:                                               ; preds = %10
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %22, align 8
  %24 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %25 = call i32 %23(%struct.perf_event* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %17, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @has_aux(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
