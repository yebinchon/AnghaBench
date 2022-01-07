; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_local_field_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_local_field_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_trigger_data*, i8*, i8*, i8*)* @local_field_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @local_field_var_ref(%struct.hist_trigger_data* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.trace_event_call*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %18 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.trace_event_call*, %struct.trace_event_call** %20, align 8
  store %struct.trace_event_call* %21, %struct.trace_event_call** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.trace_event_call*, %struct.trace_event_call** %10, align 8
  %24 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i8* %22, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i8* null, i8** %5, align 8
  br label %63

31:                                               ; preds = %16
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.trace_event_call*, %struct.trace_event_call** %10, align 8
  %34 = call i32 @trace_event_name(%struct.trace_event_call* %33)
  %35 = call i64 @strcmp(i8* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %5, align 8
  br label %63

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %13, %4
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i8* null, i8** %5, align 8
  br label %63

52:                                               ; preds = %39
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @is_var_ref(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i8* null, i8** %5, align 8
  br label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  %60 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i8* @field_name_from_var(%struct.hist_trigger_data* %60, i8* %61)
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %57, %56, %51, %37, %30
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @trace_event_name(%struct.trace_event_call*) #1

declare dso_local i32 @is_var_ref(i8*) #1

declare dso_local i8* @field_name_from_var(%struct.hist_trigger_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
