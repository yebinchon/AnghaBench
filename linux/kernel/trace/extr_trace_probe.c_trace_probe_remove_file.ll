; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_remove_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trace_event_file = type { i32 }
%struct.event_file_link = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@TP_FLAG_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_probe_remove_file(%struct.trace_probe* %0, %struct.trace_event_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_probe*, align 8
  %5 = alloca %struct.trace_event_file*, align 8
  %6 = alloca %struct.event_file_link*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %4, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %5, align 8
  %7 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %8 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %9 = call %struct.event_file_link* @trace_probe_get_file_link(%struct.trace_probe* %7, %struct.trace_event_file* %8)
  store %struct.event_file_link* %9, %struct.event_file_link** %6, align 8
  %10 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %11 = icmp ne %struct.event_file_link* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %17 = getelementptr inbounds %struct.event_file_link, %struct.event_file_link* %16, i32 0, i32 0
  %18 = call i32 @list_del_rcu(i32* %17)
  %19 = call i32 (...) @synchronize_rcu()
  %20 = load %struct.event_file_link*, %struct.event_file_link** %6, align 8
  %21 = call i32 @kfree(%struct.event_file_link* %20)
  %22 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %23 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %30 = load i32, i32* @TP_FLAG_TRACE, align 4
  %31 = call i32 @trace_probe_clear_flag(%struct.trace_probe* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %15
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.event_file_link* @trace_probe_get_file_link(%struct.trace_probe*, %struct.trace_event_file*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.event_file_link*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @trace_probe_clear_flag(%struct.trace_probe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
