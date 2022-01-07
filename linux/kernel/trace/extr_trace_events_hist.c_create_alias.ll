; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_alias.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.hist_field = type { i32, i32, i32, %struct.hist_field**, i32 }

@HIST_FIELD_FL_ALIAS = common dso_local global i64 0, align 8
@HIST_FIELD_FL_VAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.hist_field*, i8*)* @create_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @create_alias(%struct.hist_trigger_data* %0, %struct.hist_field* %1, i8* %2) #0 {
  %4 = alloca %struct.hist_field*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.hist_field*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hist_field*, align 8
  %9 = alloca i64, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %5, align 8
  store %struct.hist_field* %1, %struct.hist_field** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.hist_field* null, %struct.hist_field** %8, align 8
  %10 = load i64, i64* @HIST_FIELD_FL_ALIAS, align 8
  %11 = load i64, i64* @HIST_FIELD_FL_VAR, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %13, i32* null, i64 %14, i8* %15)
  store %struct.hist_field* %16, %struct.hist_field** %8, align 8
  %17 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %18 = icmp ne %struct.hist_field* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.hist_field* null, %struct.hist_field** %4, align 8
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %22 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %25 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %27 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %28 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %27, i32 0, i32 3
  %29 = load %struct.hist_field**, %struct.hist_field*** %28, align 8
  %30 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %29, i64 0
  store %struct.hist_field* %26, %struct.hist_field** %30, align 8
  %31 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %32 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %33 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %34 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %37 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @init_var_ref(%struct.hist_field* %31, %struct.hist_field* %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %43 = call i32 @destroy_hist_field(%struct.hist_field* %42, i32 0)
  store %struct.hist_field* null, %struct.hist_field** %4, align 8
  br label %51

44:                                               ; preds = %20
  %45 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %46 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %49 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  store %struct.hist_field* %50, %struct.hist_field** %4, align 8
  br label %51

51:                                               ; preds = %44, %41, %19
  %52 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  ret %struct.hist_field* %52
}

declare dso_local %struct.hist_field* @create_hist_field(%struct.hist_trigger_data*, i32*, i64, i8*) #1

declare dso_local i64 @init_var_ref(%struct.hist_field*, %struct.hist_field*, i32, i32) #1

declare dso_local i32 @destroy_hist_field(%struct.hist_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
