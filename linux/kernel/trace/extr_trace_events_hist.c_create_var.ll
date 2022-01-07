; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, %struct.hist_field*, %struct.TYPE_2__, %struct.hist_trigger_data*, i32 }
%struct.TYPE_2__ = type { i32, %struct.hist_field*, %struct.hist_trigger_data* }
%struct.hist_trigger_data = type { i32, i32 }
%struct.trace_event_file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIST_FIELD_FL_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i32, i8*)* @create_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @create_var(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.trace_event_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @find_var(%struct.hist_trigger_data* %13, %struct.trace_event_file* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %20 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.hist_field* @ERR_PTR(i32 %25)
  store %struct.hist_field* %26, %struct.hist_field** %11, align 8
  br label %105

27:                                               ; preds = %18, %5
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.hist_field* @kzalloc(i32 56, i32 %28)
  store %struct.hist_field* %29, %struct.hist_field** %11, align 8
  %30 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %31 = icmp ne %struct.hist_field* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.hist_field* @ERR_PTR(i32 %34)
  store %struct.hist_field* %35, %struct.hist_field** %11, align 8
  br label %105

36:                                               ; preds = %27
  %37 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %38 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tracing_map_add_var(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %45 = call i32 @kfree(%struct.hist_field* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.hist_field* @ERR_PTR(i32 %47)
  store %struct.hist_field* %48, %struct.hist_field** %11, align 8
  br label %105

49:                                               ; preds = %36
  %50 = load i32, i32* @HIST_FIELD_FL_VAR, align 4
  %51 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %52 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %55 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %58 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %59 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %58, i32 0, i32 3
  store %struct.hist_trigger_data* %57, %struct.hist_trigger_data** %59, align 8
  %60 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %61 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store %struct.hist_trigger_data* %57, %struct.hist_trigger_data** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %65 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kstrdup(i8* %66, i32 %67)
  %69 = bitcast i8* %68 to %struct.hist_field*
  %70 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %71 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store %struct.hist_field* %69, %struct.hist_field** %72, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kstrdup(i8* %73, i32 %74)
  %76 = bitcast i8* %75 to %struct.hist_field*
  %77 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %78 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %77, i32 0, i32 1
  store %struct.hist_field* %76, %struct.hist_field** %78, align 8
  %79 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %80 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.hist_field*, %struct.hist_field** %81, align 8
  %83 = icmp ne %struct.hist_field* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %49
  %85 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %86 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %85, i32 0, i32 1
  %87 = load %struct.hist_field*, %struct.hist_field** %86, align 8
  %88 = icmp ne %struct.hist_field* %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %84, %49
  %90 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %91 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load %struct.hist_field*, %struct.hist_field** %92, align 8
  %94 = call i32 @kfree(%struct.hist_field* %93)
  %95 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %96 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %95, i32 0, i32 1
  %97 = load %struct.hist_field*, %struct.hist_field** %96, align 8
  %98 = call i32 @kfree(%struct.hist_field* %97)
  %99 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %100 = call i32 @kfree(%struct.hist_field* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  %103 = call %struct.hist_field* @ERR_PTR(i32 %102)
  store %struct.hist_field* %103, %struct.hist_field** %11, align 8
  br label %104

104:                                              ; preds = %89, %84
  br label %105

105:                                              ; preds = %104, %43, %32, %23
  %106 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  ret %struct.hist_field* %106
}

declare dso_local i64 @find_var(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*) #1

declare dso_local %struct.hist_field* @ERR_PTR(i32) #1

declare dso_local %struct.hist_field* @kzalloc(i32, i32) #1

declare dso_local i32 @tracing_map_add_var(i32) #1

declare dso_local i32 @kfree(%struct.hist_field*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
