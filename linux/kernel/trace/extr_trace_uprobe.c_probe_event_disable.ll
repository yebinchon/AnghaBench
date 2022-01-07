; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_probe_event_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_probe_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_event_file = type { i32 }
%struct.trace_probe = type { i32 }

@TP_FLAG_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_call*, %struct.trace_event_file*)* @probe_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_event_disable(%struct.trace_event_call* %0, %struct.trace_event_file* %1) #0 {
  %3 = alloca %struct.trace_event_call*, align 8
  %4 = alloca %struct.trace_event_file*, align 8
  %5 = alloca %struct.trace_probe*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %3, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %4, align 8
  %6 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %7 = call %struct.trace_probe* @trace_probe_primary_from_call(%struct.trace_event_call* %6)
  store %struct.trace_probe* %7, %struct.trace_probe** %5, align 8
  %8 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %9 = icmp ne %struct.trace_probe* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %17 = call i64 @trace_probe_is_enabled(%struct.trace_probe* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %43

20:                                               ; preds = %15
  %21 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %22 = icmp ne %struct.trace_event_file* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %25 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %26 = call i64 @trace_probe_remove_file(%struct.trace_probe* %24, %struct.trace_event_file* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %43

29:                                               ; preds = %23
  %30 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %31 = call i64 @trace_probe_is_enabled(%struct.trace_probe* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %43

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %20
  %36 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %37 = load i32, i32* @TP_FLAG_PROFILE, align 4
  %38 = call i32 @trace_probe_clear_flag(%struct.trace_probe* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %41 = call i32 @__probe_event_disable(%struct.trace_probe* %40)
  %42 = call i32 (...) @uprobe_buffer_disable()
  br label %43

43:                                               ; preds = %39, %33, %28, %19, %14
  ret void
}

declare dso_local %struct.trace_probe* @trace_probe_primary_from_call(%struct.trace_event_call*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @trace_probe_is_enabled(%struct.trace_probe*) #1

declare dso_local i64 @trace_probe_remove_file(%struct.trace_probe*, %struct.trace_event_file*) #1

declare dso_local i32 @trace_probe_clear_flag(%struct.trace_probe*, i32) #1

declare dso_local i32 @__probe_event_disable(%struct.trace_probe*) #1

declare dso_local i32 @uprobe_buffer_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
