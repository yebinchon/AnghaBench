; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_hist_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_hist_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_ops = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.hist_trigger_attrs*, i32*, i32, %struct.trace_event_file* }
%struct.hist_trigger_attrs = type { i32 }
%struct.trace_event_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hist_trigger_elt_data_ops = common dso_local global %struct.tracing_map_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_trigger_data* (i32, %struct.hist_trigger_attrs*, %struct.trace_event_file*, i32)* @create_hist_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_trigger_data* @create_hist_data(i32 %0, %struct.hist_trigger_attrs* %1, %struct.trace_event_file* %2, i32 %3) #0 {
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_trigger_attrs*, align 8
  %8 = alloca %struct.trace_event_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tracing_map_ops*, align 8
  %11 = alloca %struct.hist_trigger_data*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.hist_trigger_attrs* %1, %struct.hist_trigger_attrs** %7, align 8
  store %struct.trace_event_file* %2, %struct.trace_event_file** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.tracing_map_ops* null, %struct.tracing_map_ops** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hist_trigger_data* @kzalloc(i32 40, i32 %13)
  store %struct.hist_trigger_data* %14, %struct.hist_trigger_data** %11, align 8
  %15 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %16 = icmp ne %struct.hist_trigger_data* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.hist_trigger_data* @ERR_PTR(i32 %19)
  store %struct.hist_trigger_data* %20, %struct.hist_trigger_data** %5, align 8
  br label %87

21:                                               ; preds = %4
  %22 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %7, align 8
  %23 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %24 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %23, i32 0, i32 1
  store %struct.hist_trigger_attrs* %22, %struct.hist_trigger_attrs** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %27 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %29 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %30 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %29, i32 0, i32 4
  store %struct.trace_event_file* %28, %struct.trace_event_file** %30, align 8
  %31 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %32 = call i32 @parse_actions(%struct.hist_trigger_data* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %80

36:                                               ; preds = %21
  %37 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %38 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %39 = call i32 @create_hist_fields(%struct.hist_trigger_data* %37, %struct.trace_event_file* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %80

43:                                               ; preds = %36
  %44 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %45 = call i32 @create_sort_keys(%struct.hist_trigger_data* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %80

49:                                               ; preds = %43
  store %struct.tracing_map_ops* @hist_trigger_elt_data_ops, %struct.tracing_map_ops** %10, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %52 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tracing_map_ops*, %struct.tracing_map_ops** %10, align 8
  %55 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %56 = call i32* @tracing_map_create(i32 %50, i32 %53, %struct.tracing_map_ops* %54, %struct.hist_trigger_data* %55)
  %57 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %58 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %60 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %49
  %65 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %66 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PTR_ERR(i32* %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %70 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %80

71:                                               ; preds = %49
  %72 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %73 = call i32 @create_tracing_map_fields(%struct.hist_trigger_data* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %80

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %80, %77
  %79 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  store %struct.hist_trigger_data* %79, %struct.hist_trigger_data** %5, align 8
  br label %87

80:                                               ; preds = %76, %64, %48, %42, %35
  %81 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %82 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %81, i32 0, i32 1
  store %struct.hist_trigger_attrs* null, %struct.hist_trigger_attrs** %82, align 8
  %83 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %11, align 8
  %84 = call i32 @destroy_hist_data(%struct.hist_trigger_data* %83)
  %85 = load i32, i32* %12, align 4
  %86 = call %struct.hist_trigger_data* @ERR_PTR(i32 %85)
  store %struct.hist_trigger_data* %86, %struct.hist_trigger_data** %11, align 8
  br label %78

87:                                               ; preds = %78, %17
  %88 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  ret %struct.hist_trigger_data* %88
}

declare dso_local %struct.hist_trigger_data* @kzalloc(i32, i32) #1

declare dso_local %struct.hist_trigger_data* @ERR_PTR(i32) #1

declare dso_local i32 @parse_actions(%struct.hist_trigger_data*) #1

declare dso_local i32 @create_hist_fields(%struct.hist_trigger_data*, %struct.trace_event_file*) #1

declare dso_local i32 @create_sort_keys(%struct.hist_trigger_data*) #1

declare dso_local i32* @tracing_map_create(i32, i32, %struct.tracing_map_ops*, %struct.hist_trigger_data*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @create_tracing_map_fields(%struct.hist_trigger_data*) #1

declare dso_local i32 @destroy_hist_data(%struct.hist_trigger_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
