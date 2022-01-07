; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_resolve_var_refs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_resolve_var_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, i32, %struct.hist_field** }
%struct.hist_field = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hist_trigger_data* }
%struct.tracing_map_elt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, i8*, i32*, i32)* @resolve_var_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_var_refs(%struct.hist_trigger_data* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hist_trigger_data*, align 8
  %10 = alloca %struct.tracing_map_elt*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %93, %4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %19 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %96

22:                                               ; preds = %16
  %23 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %24 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %23, i32 0, i32 2
  %25 = load %struct.hist_field**, %struct.hist_field*** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %25, i64 %27
  %29 = load %struct.hist_field*, %struct.hist_field** %28, align 8
  store %struct.hist_field* %29, %struct.hist_field** %11, align 8
  %30 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %31 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %35 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %36, align 8
  store %struct.hist_trigger_data* %37, %struct.hist_trigger_data** %9, align 8
  %38 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %9, align 8
  %39 = icmp eq %struct.hist_trigger_data* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %96

41:                                               ; preds = %22
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %9, align 8
  %46 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %47 = icmp ne %struct.hist_trigger_data* %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %9, align 8
  %53 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %54 = icmp eq %struct.hist_trigger_data* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %44
  br label %93

56:                                               ; preds = %51, %48
  %57 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %9, align 8
  %58 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call %struct.tracing_map_elt* @tracing_map_lookup(i32 %59, i8* %60)
  store %struct.tracing_map_elt* %61, %struct.tracing_map_elt** %10, align 8
  %62 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %10, align 8
  %63 = icmp ne %struct.tracing_map_elt* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %96

65:                                               ; preds = %56
  %66 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @tracing_map_var_set(%struct.tracing_map_elt* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %96

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %76 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @tracing_map_read_var(%struct.tracing_map_elt* %80, i32 %81)
  store i32 %82, i32* %15, align 4
  br label %87

83:                                               ; preds = %74
  %84 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @tracing_map_read_var_once(%struct.tracing_map_elt* %84, i32 %85)
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %15, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %55
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %16

96:                                               ; preds = %70, %64, %40, %16
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local %struct.tracing_map_elt* @tracing_map_lookup(i32, i8*) #1

declare dso_local i32 @tracing_map_var_set(%struct.tracing_map_elt*, i32) #1

declare dso_local i32 @tracing_map_read_var(%struct.tracing_map_elt*, i32) #1

declare dso_local i32 @tracing_map_read_var_once(%struct.tracing_map_elt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
