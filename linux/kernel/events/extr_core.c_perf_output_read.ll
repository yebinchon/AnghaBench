; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_output_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_output_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_FORMAT_TOTAL_TIMES = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*, %struct.perf_event*)* @perf_output_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_output_read(%struct.perf_output_handle* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.perf_output_handle*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PERF_FORMAT_TOTAL_TIMES, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = call i32 @calc_timer_values(%struct.perf_event* %18, i32* %7, i32* %5, i32* %6)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @perf_output_read_group(%struct.perf_output_handle* %29, %struct.perf_event* %30, i32 %31, i32 %32)
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @perf_output_read_one(%struct.perf_output_handle* %35, %struct.perf_event* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @calc_timer_values(%struct.perf_event*, i32*, i32*, i32*) #1

declare dso_local i32 @perf_output_read_group(%struct.perf_output_handle*, %struct.perf_event*, i32, i32) #1

declare dso_local i32 @perf_output_read_one(%struct.perf_output_handle*, %struct.perf_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
