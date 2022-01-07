; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_action_create_field_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_action_create_field_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { %struct.hist_field* }
%struct.hist_trigger_data = type { i32 }
%struct.action_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.field_var = type { %struct.field_var* }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.action_data*, i8*, i8*, i8*)* @trace_action_create_field_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @trace_action_create_field_var(%struct.hist_trigger_data* %0, %struct.action_data* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.action_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca %struct.field_var*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store %struct.action_data* %1, %struct.action_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.hist_field* null, %struct.hist_field** %11, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call %struct.hist_field* @create_target_field_var(%struct.hist_trigger_data* %13, i8* %14, i8* %15, i8* %16)
  %18 = bitcast %struct.hist_field* %17 to %struct.field_var*
  store %struct.field_var* %18, %struct.field_var** %12, align 8
  %19 = load %struct.field_var*, %struct.field_var** %12, align 8
  %20 = icmp ne %struct.field_var* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %5
  %22 = load %struct.field_var*, %struct.field_var** %12, align 8
  %23 = bitcast %struct.field_var* %22 to %struct.hist_field*
  %24 = call i64 @IS_ERR(%struct.hist_field* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %28 = load %struct.field_var*, %struct.field_var** %12, align 8
  %29 = bitcast %struct.field_var* %28 to %struct.hist_field*
  %30 = call i32 @save_field_var(%struct.hist_trigger_data* %27, %struct.hist_field* %29)
  %31 = load %struct.field_var*, %struct.field_var** %12, align 8
  %32 = getelementptr inbounds %struct.field_var, %struct.field_var* %31, i32 0, i32 0
  %33 = load %struct.field_var*, %struct.field_var** %32, align 8
  %34 = bitcast %struct.field_var* %33 to %struct.hist_field*
  store %struct.hist_field* %34, %struct.hist_field** %11, align 8
  br label %64

35:                                               ; preds = %21, %5
  store %struct.field_var* null, %struct.field_var** %12, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load %struct.action_data*, %struct.action_data** %7, align 8
  %40 = getelementptr inbounds %struct.action_data, %struct.action_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HANDLER_ONMATCH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.action_data*, %struct.action_data** %7, align 8
  %46 = getelementptr inbounds %struct.action_data, %struct.action_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load %struct.action_data*, %struct.action_data** %7, align 8
  %50 = getelementptr inbounds %struct.action_data, %struct.action_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %44, %38, %35
  %54 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call %struct.hist_field* @create_field_var_hist(%struct.hist_trigger_data* %54, i8* %55, i8* %56, i8* %57)
  store %struct.hist_field* %58, %struct.hist_field** %11, align 8
  %59 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %60 = call i64 @IS_ERR(%struct.hist_field* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %26
  br label %65

65:                                               ; preds = %67, %64
  %66 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  ret %struct.hist_field* %66

67:                                               ; preds = %62
  %68 = load %struct.field_var*, %struct.field_var** %12, align 8
  %69 = bitcast %struct.field_var* %68 to %struct.hist_field*
  %70 = call i32 @destroy_field_var(%struct.hist_field* %69)
  store %struct.hist_field* null, %struct.hist_field** %11, align 8
  br label %65
}

declare dso_local %struct.hist_field* @create_target_field_var(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @save_field_var(%struct.hist_trigger_data*, %struct.hist_field*) #1

declare dso_local %struct.hist_field* @create_field_var_hist(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local i32 @destroy_field_var(%struct.hist_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
