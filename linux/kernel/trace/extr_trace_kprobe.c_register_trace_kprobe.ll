; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_register_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_register_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { i32, i32 }

@event_mutex = common dso_local global i32 0, align 4
@DIFF_PROBE_TYPE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register probe event(%d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"This probe might be able to register after target module is loaded. Continue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_kprobe*)* @register_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_trace_kprobe(%struct.trace_kprobe* %0) #0 {
  %2 = alloca %struct.trace_kprobe*, align 8
  %3 = alloca %struct.trace_kprobe*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %2, align 8
  %5 = call i32 @mutex_lock(i32* @event_mutex)
  %6 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %7 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %6, i32 0, i32 1
  %8 = call i32 @trace_probe_name(i32* %7)
  %9 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %10 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %9, i32 0, i32 1
  %11 = call i32 @trace_probe_group_name(i32* %10)
  %12 = call %struct.trace_kprobe* @find_trace_kprobe(i32 %8, i32 %11)
  store %struct.trace_kprobe* %12, %struct.trace_kprobe** %3, align 8
  %13 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %14 = icmp ne %struct.trace_kprobe* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %17 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %16)
  %18 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %19 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = call i32 @trace_probe_log_set_index(i32 0)
  %23 = load i32, i32* @DIFF_PROBE_TYPE, align 4
  %24 = call i32 @trace_probe_log_err(i32 0, i32 %23)
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %15
  %28 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %29 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %30 = call i32 @append_trace_kprobe(%struct.trace_kprobe* %28, %struct.trace_kprobe* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %21
  br label %64

32:                                               ; preds = %1
  %33 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %34 = call i32 @register_kprobe_event(%struct.trace_kprobe* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %64

40:                                               ; preds = %32
  %41 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %42 = call i32 @__register_trace_kprobe(%struct.trace_kprobe* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %49 = call i32 @trace_kprobe_module_exist(%struct.trace_kprobe* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %47, %40
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %58 = call i32 @unregister_kprobe_event(%struct.trace_kprobe* %57)
  br label %63

59:                                               ; preds = %53
  %60 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %61 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %60, i32 0, i32 0
  %62 = call i32 @dyn_event_add(i32* %61)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %37, %31
  %65 = call i32 @mutex_unlock(i32* @event_mutex)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.trace_kprobe* @find_trace_kprobe(i32, i32) #1

declare dso_local i32 @trace_probe_name(i32*) #1

declare dso_local i32 @trace_probe_group_name(i32*) #1

declare dso_local i64 @trace_kprobe_is_return(%struct.trace_kprobe*) #1

declare dso_local i32 @trace_probe_log_set_index(i32) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @append_trace_kprobe(%struct.trace_kprobe*, %struct.trace_kprobe*) #1

declare dso_local i32 @register_kprobe_event(%struct.trace_kprobe*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @__register_trace_kprobe(%struct.trace_kprobe*) #1

declare dso_local i32 @trace_kprobe_module_exist(%struct.trace_kprobe*) #1

declare dso_local i32 @unregister_kprobe_event(%struct.trace_kprobe*) #1

declare dso_local i32 @dyn_event_add(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
