; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_append_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_append_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { i32, i32 }

@DIFF_ARG_TYPE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SAME_PROBE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"This probe might be able to register after target module is loaded. Continue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_kprobe*, %struct.trace_kprobe*)* @append_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_trace_kprobe(%struct.trace_kprobe* %0, %struct.trace_kprobe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_kprobe*, align 8
  %5 = alloca %struct.trace_kprobe*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %4, align 8
  store %struct.trace_kprobe* %1, %struct.trace_kprobe** %5, align 8
  %7 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %8 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %7, i32 0, i32 1
  %9 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %10 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %9, i32 0, i32 1
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
  br label %69

22:                                               ; preds = %2
  %23 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %24 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %25 = call i64 @trace_kprobe_has_same_kprobe(%struct.trace_kprobe* %23, %struct.trace_kprobe* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = call i32 @trace_probe_log_set_index(i32 0)
  %29 = load i32, i32* @SAME_PROBE, align 4
  %30 = call i32 @trace_probe_log_err(i32 0, i32 %29)
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %22
  %34 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %35 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %34, i32 0, i32 1
  %36 = load %struct.trace_kprobe*, %struct.trace_kprobe** %5, align 8
  %37 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %36, i32 0, i32 1
  %38 = call i32 @trace_probe_append(i32* %35, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %33
  %44 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %45 = call i32 @__register_trace_kprobe(%struct.trace_kprobe* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %52 = call i32 @trace_kprobe_module_exist(%struct.trace_kprobe* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %50, %43
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %61 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %60, i32 0, i32 1
  %62 = call i32 @trace_probe_unlink(i32* %61)
  br label %67

63:                                               ; preds = %56
  %64 = load %struct.trace_kprobe*, %struct.trace_kprobe** %4, align 8
  %65 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %64, i32 0, i32 0
  %66 = call i32 @dyn_event_add(i32* %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %41, %27, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @trace_probe_compare_arg_type(i32*, i32*) #1

declare dso_local i32 @trace_probe_log_set_index(i32) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i64 @trace_kprobe_has_same_kprobe(%struct.trace_kprobe*, %struct.trace_kprobe*) #1

declare dso_local i32 @trace_probe_append(i32*, i32*) #1

declare dso_local i32 @__register_trace_kprobe(%struct.trace_kprobe*) #1

declare dso_local i32 @trace_kprobe_module_exist(%struct.trace_kprobe*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @trace_probe_unlink(i32*) #1

declare dso_local i32 @dyn_event_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
