; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i64, %struct.hist_field** }
%struct.hist_field = type { i64, i32 }

@HIST_FIELD_FL_VAR_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.hist_field*, i8*, i8*)* @create_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @create_var_ref(%struct.hist_trigger_data* %0, %struct.hist_field* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hist_field*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store %struct.hist_field* %1, %struct.hist_field** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* @HIST_FIELD_FL_VAR_REF, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %14 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call %struct.hist_field* @create_hist_field(i32 %15, i32* null, i64 %16, i32* null)
  store %struct.hist_field* %17, %struct.hist_field** %11, align 8
  %18 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %19 = icmp ne %struct.hist_field* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %4
  %21 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %22 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @init_var_ref(%struct.hist_field* %21, %struct.hist_field* %22, i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %29 = call i32 @destroy_hist_field(%struct.hist_field* %28, i32 0)
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %47

30:                                               ; preds = %20
  %31 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %32 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %33 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %32, i32 0, i32 1
  %34 = load %struct.hist_field**, %struct.hist_field*** %33, align 8
  %35 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %36 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %34, i64 %37
  store %struct.hist_field* %31, %struct.hist_field** %38, align 8
  %39 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %40 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %44 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %30, %4
  %46 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  store %struct.hist_field* %46, %struct.hist_field** %5, align 8
  br label %47

47:                                               ; preds = %45, %27
  %48 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  ret %struct.hist_field* %48
}

declare dso_local %struct.hist_field* @create_hist_field(i32, i32*, i64, i32*) #1

declare dso_local i64 @init_var_ref(%struct.hist_field*, %struct.hist_field*, i8*, i8*) #1

declare dso_local i32 @destroy_hist_field(%struct.hist_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
