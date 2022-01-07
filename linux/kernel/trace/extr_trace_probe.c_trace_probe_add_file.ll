; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_add_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trace_event_file = type { i32 }
%struct.event_file_link = type { i32, %struct.trace_event_file* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TP_FLAG_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_probe_add_file(%struct.trace_probe* %0, %struct.trace_event_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_probe*, align 8
  %5 = alloca %struct.trace_event_file*, align 8
  %6 = alloca %struct.event_file_link*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %4, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.event_file_link* @kmalloc(i32 16, i32 %7)
  store %struct.event_file_link* %8, %struct.event_file_link** %6, align 8
  %9 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %10 = icmp ne %struct.event_file_link* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %16 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %17 = getelementptr inbounds %struct.event_file_link, %struct.event_file_link* %16, i32 0, i32 1
  store %struct.trace_event_file* %15, %struct.trace_event_file** %17, align 8
  %18 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %19 = getelementptr inbounds %struct.event_file_link, %struct.event_file_link* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %22 = getelementptr inbounds %struct.event_file_link, %struct.event_file_link* %21, i32 0, i32 0
  %23 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %24 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail_rcu(i32* %22, i32* %26)
  %28 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %29 = load i32, i32* @TP_FLAG_TRACE, align 4
  %30 = call i32 @trace_probe_set_flag(%struct.trace_probe* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.event_file_link* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @trace_probe_set_flag(%struct.trace_probe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
