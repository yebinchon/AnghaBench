; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }

@HIST_ERR_VAR_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, i8*, i8*, i8*)* @parse_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @parse_var_ref(%struct.hist_trigger_data* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hist_field*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca %struct.trace_array*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.hist_field* null, %struct.hist_field** %10, align 8
  store %struct.hist_field* null, %struct.hist_field** %11, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @is_var_ref(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %49

22:                                               ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  %25 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call %struct.hist_field* @find_event_var(%struct.hist_trigger_data* %25, i8* %26, i8* %27, i8* %28)
  store %struct.hist_field* %29, %struct.hist_field** %10, align 8
  %30 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %31 = icmp ne %struct.hist_field* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %34 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call %struct.hist_field* @create_var_ref(%struct.hist_trigger_data* %33, %struct.hist_field* %34, i8* %35, i8* %36)
  store %struct.hist_field* %37, %struct.hist_field** %11, align 8
  br label %38

38:                                               ; preds = %32, %22
  %39 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %40 = icmp ne %struct.hist_field* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.trace_array*, %struct.trace_array** %12, align 8
  %43 = load i32, i32* @HIST_ERR_VAR_NOT_FOUND, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @errpos(i8* %44)
  %46 = call i32 @hist_err(%struct.trace_array* %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  store %struct.hist_field* %48, %struct.hist_field** %5, align 8
  br label %49

49:                                               ; preds = %47, %21
  %50 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  ret %struct.hist_field* %50
}

declare dso_local i32 @is_var_ref(i8*) #1

declare dso_local %struct.hist_field* @find_event_var(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @create_var_ref(%struct.hist_trigger_data*, %struct.hist_field*, i8*, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
