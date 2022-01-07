; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_target_field_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_target_field_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_var = type { i32 }
%struct.hist_trigger_data = type { %struct.trace_event_file* }
%struct.trace_event_file = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field_var* (%struct.hist_trigger_data*, i8*, i8*, i8*)* @create_target_field_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field_var* @create_target_field_var(%struct.hist_trigger_data* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.field_var*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.trace_event_file*, align 8
  %11 = alloca %struct.trace_event_call*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %13 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %12, i32 0, i32 0
  %14 = load %struct.trace_event_file*, %struct.trace_event_file** %13, align 8
  store %struct.trace_event_file* %14, %struct.trace_event_file** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store %struct.field_var* null, %struct.field_var** %5, align 8
  br label %47

21:                                               ; preds = %17
  %22 = load %struct.trace_event_file*, %struct.trace_event_file** %10, align 8
  %23 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %22, i32 0, i32 0
  %24 = load %struct.trace_event_call*, %struct.trace_event_call** %23, align 8
  store %struct.trace_event_call* %24, %struct.trace_event_call** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.trace_event_call*, %struct.trace_event_call** %11, align 8
  %27 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i8* %25, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store %struct.field_var* null, %struct.field_var** %5, align 8
  br label %47

34:                                               ; preds = %21
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.trace_event_call*, %struct.trace_event_call** %11, align 8
  %37 = call i32 @trace_event_name(%struct.trace_event_call* %36)
  %38 = call i64 @strcmp(i8* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.field_var* null, %struct.field_var** %5, align 8
  br label %47

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %44 = load %struct.trace_event_file*, %struct.trace_event_file** %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call %struct.field_var* @create_field_var(%struct.hist_trigger_data* %43, %struct.trace_event_file* %44, i8* %45)
  store %struct.field_var* %46, %struct.field_var** %5, align 8
  br label %47

47:                                               ; preds = %42, %40, %33, %20
  %48 = load %struct.field_var*, %struct.field_var** %5, align 8
  ret %struct.field_var* %48
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @trace_event_name(%struct.trace_event_call*) #1

declare dso_local %struct.field_var* @create_field_var(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
