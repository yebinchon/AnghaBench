; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_append_trace_uprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_append_trace_uprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { i32, i32 }

@DIFF_ARG_TYPE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SAME_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_uprobe*, %struct.trace_uprobe*)* @append_trace_uprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_trace_uprobe(%struct.trace_uprobe* %0, %struct.trace_uprobe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_uprobe*, align 8
  %5 = alloca %struct.trace_uprobe*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_uprobe* %0, %struct.trace_uprobe** %4, align 8
  store %struct.trace_uprobe* %1, %struct.trace_uprobe** %5, align 8
  %7 = load %struct.trace_uprobe*, %struct.trace_uprobe** %4, align 8
  %8 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %7, i32 0, i32 1
  %9 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %10 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %9, i32 0, i32 1
  %11 = call i32 @trace_probe_compare_arg_type(i32* %8, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @trace_probe_log_set_index(i32 %16)
  %18 = load i32, i32* @DIFF_ARG_TYPE, align 4
  %19 = call i32 @trace_probe_log_err(i32 0, i32 %18)
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %24 = load %struct.trace_uprobe*, %struct.trace_uprobe** %4, align 8
  %25 = call i64 @trace_uprobe_has_same_uprobe(%struct.trace_uprobe* %23, %struct.trace_uprobe* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = call i32 @trace_probe_log_set_index(i32 0)
  %29 = load i32, i32* @SAME_PROBE, align 4
  %30 = call i32 @trace_probe_log_err(i32 0, i32 %29)
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %22
  %34 = load %struct.trace_uprobe*, %struct.trace_uprobe** %4, align 8
  %35 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %34, i32 0, i32 1
  %36 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %37 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %36, i32 0, i32 1
  %38 = call i32 @trace_probe_append(i32* %35, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.trace_uprobe*, %struct.trace_uprobe** %4, align 8
  %43 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %42, i32 0, i32 0
  %44 = call i32 @dyn_event_add(i32* %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %27, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @trace_probe_compare_arg_type(i32*, i32*) #1

declare dso_local i32 @trace_probe_log_set_index(i32) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i64 @trace_uprobe_has_same_uprobe(%struct.trace_uprobe*, %struct.trace_uprobe*) #1

declare dso_local i32 @trace_probe_append(i32*, i32*) #1

declare dso_local i32 @dyn_event_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
