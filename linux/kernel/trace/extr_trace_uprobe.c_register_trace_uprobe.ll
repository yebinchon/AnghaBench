; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_register_trace_uprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_register_trace_uprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { i32, i32 }

@event_mutex = common dso_local global i32 0, align 4
@DIFF_PROBE_TYPE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register probe event(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_uprobe*)* @register_trace_uprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_trace_uprobe(%struct.trace_uprobe* %0) #0 {
  %2 = alloca %struct.trace_uprobe*, align 8
  %3 = alloca %struct.trace_uprobe*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_uprobe* %0, %struct.trace_uprobe** %2, align 8
  %5 = call i32 @mutex_lock(i32* @event_mutex)
  %6 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %7 = call i32 @validate_ref_ctr_offset(%struct.trace_uprobe* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %13 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %12, i32 0, i32 1
  %14 = call i32 @trace_probe_name(i32* %13)
  %15 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %16 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %15, i32 0, i32 1
  %17 = call i32 @trace_probe_group_name(i32* %16)
  %18 = call %struct.trace_uprobe* @find_probe_event(i32 %14, i32 %17)
  store %struct.trace_uprobe* %18, %struct.trace_uprobe** %3, align 8
  %19 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %20 = icmp ne %struct.trace_uprobe* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %23 = call i64 @is_ret_probe(%struct.trace_uprobe* %22)
  %24 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %25 = call i64 @is_ret_probe(%struct.trace_uprobe* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = call i32 @trace_probe_log_set_index(i32 0)
  %29 = load i32, i32* @DIFF_PROBE_TYPE, align 4
  %30 = call i32 @trace_probe_log_err(i32 0, i32 %29)
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %35 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %36 = call i32 @append_trace_uprobe(%struct.trace_uprobe* %34, %struct.trace_uprobe* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %27
  br label %50

38:                                               ; preds = %11
  %39 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %40 = call i32 @register_uprobe_event(%struct.trace_uprobe* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %48 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %47, i32 0, i32 0
  %49 = call i32 @dyn_event_add(i32* %48)
  br label %50

50:                                               ; preds = %46, %43, %37, %10
  %51 = call i32 @mutex_unlock(i32* @event_mutex)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @validate_ref_ctr_offset(%struct.trace_uprobe*) #1

declare dso_local %struct.trace_uprobe* @find_probe_event(i32, i32) #1

declare dso_local i32 @trace_probe_name(i32*) #1

declare dso_local i32 @trace_probe_group_name(i32*) #1

declare dso_local i64 @is_ret_probe(%struct.trace_uprobe*) #1

declare dso_local i32 @trace_probe_log_set_index(i32) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @append_trace_uprobe(%struct.trace_uprobe*, %struct.trace_uprobe*) #1

declare dso_local i32 @register_uprobe_event(%struct.trace_uprobe*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dyn_event_add(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
