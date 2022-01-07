; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_register_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_register_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_event = type { i32*, i32, %struct.TYPE_4__, %struct.trace_event_call }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.trace_event_call = type { %struct.TYPE_5__, i32*, %struct.synth_event*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32* }

@SYNTH_SYSTEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@synth_event_funcs = common dso_local global i32 0, align 4
@synth_event_define_fields = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_TRACEPOINT = common dso_local global i32 0, align 4
@trace_event_reg = common dso_local global i32 0, align 4
@trace_event_raw_event_synth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to register synthetic event: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synth_event*)* @register_synth_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_synth_event(%struct.synth_event* %0) #0 {
  %2 = alloca %struct.synth_event*, align 8
  %3 = alloca %struct.trace_event_call*, align 8
  %4 = alloca i32, align 4
  store %struct.synth_event* %0, %struct.synth_event** %2, align 8
  %5 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %6 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %5, i32 0, i32 3
  store %struct.trace_event_call* %6, %struct.trace_event_call** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %8 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %7, i32 0, i32 2
  %9 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %10 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %10, i32 0, i32 3
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %11, align 8
  %12 = load i32, i32* @SYNTH_SYSTEM, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kstrdup(i32 %12, i32 %13)
  %15 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %16 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 4
  %18 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %19 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %106

26:                                               ; preds = %1
  %27 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %28 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @alloc_synth_tracepoint(i32 %29)
  %31 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %32 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %34 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %40 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %44 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %106

45:                                               ; preds = %26
  %46 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %47 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %52 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32* @synth_event_funcs, i32** %53, align 8
  %54 = load i32, i32* @synth_event_define_fields, align 4
  %55 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %56 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %60 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %59, i32 0, i32 0
  %61 = call i32 @register_trace_event(%struct.TYPE_5__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %45
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %106

67:                                               ; preds = %45
  %68 = load i32, i32* @TRACE_EVENT_FL_TRACEPOINT, align 4
  %69 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %70 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @trace_event_reg, align 4
  %72 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %73 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @trace_event_raw_event_synth, align 4
  %77 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %78 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %82 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %83 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %82, i32 0, i32 2
  store %struct.synth_event* %81, %struct.synth_event** %83, align 8
  %84 = load %struct.synth_event*, %struct.synth_event** %2, align 8
  %85 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %88 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %90 = call i32 @trace_add_event_call(%struct.trace_event_call* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %67
  %94 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %95 = call i32 @trace_event_name(%struct.trace_event_call* %94)
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %108

97:                                               ; preds = %67
  %98 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %99 = call i32 @set_synth_event_print_fmt(%struct.trace_event_call* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %104 = call i32 @trace_remove_event_call(%struct.trace_event_call* %103)
  br label %108

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %108, %105, %64, %38, %23
  %107 = load i32, i32* %4, align 4
  ret i32 %107

108:                                              ; preds = %102, %93
  %109 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %110 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %109, i32 0, i32 0
  %111 = call i32 @unregister_trace_event(%struct.TYPE_5__* %110)
  br label %106
}

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32* @alloc_synth_tracepoint(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @register_trace_event(%struct.TYPE_5__*) #1

declare dso_local i32 @trace_add_event_call(%struct.trace_event_call*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @trace_event_name(%struct.trace_event_call*) #1

declare dso_local i32 @set_synth_event_print_fmt(%struct.trace_event_call*) #1

declare dso_local i32 @trace_remove_event_call(%struct.trace_event_call*) #1

declare dso_local i32 @unregister_trace_event(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
