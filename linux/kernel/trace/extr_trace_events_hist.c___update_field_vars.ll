; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___update_field_vars.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___update_field_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { %struct.hist_elt_data* }
%struct.hist_elt_data = type { i8** }
%struct.ring_buffer_event = type { i32 }
%struct.field_var = type { %struct.hist_field*, %struct.hist_field* }
%struct.hist_field = type { i32, %struct.TYPE_2__, i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)* }
%struct.TYPE_2__ = type { i32 }

@HIST_FIELD_FL_STRING = common dso_local global i32 0, align 4
@STR_VAR_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*, %struct.field_var**, i32, i32)* @__update_field_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_field_vars(%struct.tracing_map_elt* %0, %struct.ring_buffer_event* %1, i8* %2, %struct.field_var** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tracing_map_elt*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.field_var**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hist_elt_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.field_var*, align 8
  %19 = alloca %struct.hist_field*, align 8
  %20 = alloca %struct.hist_field*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.tracing_map_elt* %0, %struct.tracing_map_elt** %7, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.field_var** %3, %struct.field_var*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %24 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %23, i32 0, i32 0
  %25 = load %struct.hist_elt_data*, %struct.hist_elt_data** %24, align 8
  store %struct.hist_elt_data* %25, %struct.hist_elt_data** %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %83, %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %27
  %32 = load %struct.field_var**, %struct.field_var*** %10, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.field_var*, %struct.field_var** %32, i64 %34
  %36 = load %struct.field_var*, %struct.field_var** %35, align 8
  store %struct.field_var* %36, %struct.field_var** %18, align 8
  %37 = load %struct.field_var*, %struct.field_var** %18, align 8
  %38 = getelementptr inbounds %struct.field_var, %struct.field_var* %37, i32 0, i32 1
  %39 = load %struct.hist_field*, %struct.hist_field** %38, align 8
  store %struct.hist_field* %39, %struct.hist_field** %19, align 8
  %40 = load %struct.field_var*, %struct.field_var** %18, align 8
  %41 = getelementptr inbounds %struct.field_var, %struct.field_var* %40, i32 0, i32 0
  %42 = load %struct.hist_field*, %struct.hist_field** %41, align 8
  store %struct.hist_field* %42, %struct.hist_field** %20, align 8
  %43 = load %struct.hist_field*, %struct.hist_field** %20, align 8
  %44 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %43, i32 0, i32 2
  %45 = load i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)*, i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)** %44, align 8
  %46 = load %struct.hist_field*, %struct.hist_field** %20, align 8
  %47 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %48 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 %45(%struct.hist_field* %46, %struct.tracing_map_elt* %47, %struct.ring_buffer_event* %48, i8* %49)
  store i64 %50, i64* %17, align 8
  %51 = load %struct.hist_field*, %struct.hist_field** %19, align 8
  %52 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.hist_field*, %struct.hist_field** %20, align 8
  %56 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HIST_FIELD_FL_STRING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %31
  %62 = load %struct.hist_elt_data*, %struct.hist_elt_data** %13, align 8
  %63 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %15, align 4
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %21, align 8
  %70 = load i64, i64* %17, align 8
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %22, align 8
  %72 = load i8*, i8** %21, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = load i32, i32* @STR_VAR_LEN_MAX, align 4
  %75 = call i32 @strscpy(i8* %72, i8* %73, i32 %74)
  %76 = load i8*, i8** %21, align 8
  %77 = ptrtoint i8* %76 to i64
  store i64 %77, i64* %17, align 8
  br label %78

78:                                               ; preds = %61, %31
  %79 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i64, i64* %17, align 8
  %82 = call i32 @tracing_map_set_var(%struct.tracing_map_elt* %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %27

86:                                               ; preds = %27
  ret void
}

declare dso_local i32 @strscpy(i8*, i8*, i32) #1

declare dso_local i32 @tracing_map_set_var(%struct.tracing_map_elt*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
