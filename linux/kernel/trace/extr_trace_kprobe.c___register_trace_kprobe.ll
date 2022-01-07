; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c___register_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c___register_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@LOCKDOWN_KPROBES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not probe notrace function %s\0A\00", align 1
@KPROBE_FLAG_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_kprobe*)* @__register_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__register_trace_kprobe(%struct.trace_kprobe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_kprobe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %3, align 8
  %6 = load i32, i32* @LOCKDOWN_KPROBES, align 4
  %7 = call i32 @security_locked_down(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %14 = call i64 @trace_kprobe_is_registered(%struct.trace_kprobe* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %91

19:                                               ; preds = %12
  %20 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %21 = call i64 @within_notrace_func(%struct.trace_kprobe* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %25 = call i32 @trace_kprobe_symbol(%struct.trace_kprobe* %24)
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %33 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %39 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @traceprobe_update_arg(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %91

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %56 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %55, i32 0, i32 1
  %57 = call i64 @trace_probe_is_enabled(%struct.TYPE_4__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %63 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %61
  store i32 %67, i32* %65, align 8
  br label %76

68:                                               ; preds = %54
  %69 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %70 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %71 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %59
  %77 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %78 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %82 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %81, i32 0, i32 0
  %83 = call i32 @register_kretprobe(%struct.TYPE_5__* %82)
  store i32 %83, i32* %5, align 4
  br label %89

84:                                               ; preds = %76
  %85 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %86 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @register_kprobe(%struct.TYPE_6__* %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %48, %23, %16, %10
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @security_locked_down(i32) #1

declare dso_local i64 @trace_kprobe_is_registered(%struct.trace_kprobe*) #1

declare dso_local i64 @within_notrace_func(%struct.trace_kprobe*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @trace_kprobe_symbol(%struct.trace_kprobe*) #1

declare dso_local i32 @traceprobe_update_arg(i32*) #1

declare dso_local i64 @trace_probe_is_enabled(%struct.TYPE_4__*) #1

declare dso_local i64 @trace_kprobe_is_return(%struct.trace_kprobe*) #1

declare dso_local i32 @register_kretprobe(%struct.TYPE_5__*) #1

declare dso_local i32 @register_kprobe(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
