; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_process_preds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_process_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.event_filter = type { i32 }
%struct.filter_parse_error = type { i32 }
%struct.prog_entry = type { i32 }

@FILT_ERR_MISSING_QUOTE = common dso_local global i32 0, align 4
@FILT_ERR_TOO_MANY_OPEN = common dso_local global i32 0, align 4
@FILT_ERR_TOO_MANY_CLOSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@parse_pred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_call*, i8*, %struct.event_filter*, %struct.filter_parse_error*)* @process_preds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_preds(%struct.trace_event_call* %0, i8* %1, %struct.event_filter* %2, %struct.filter_parse_error* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event_call*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.event_filter*, align 8
  %9 = alloca %struct.filter_parse_error*, align 8
  %10 = alloca %struct.prog_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.event_filter* %2, %struct.event_filter** %8, align 8
  store %struct.filter_parse_error* %3, %struct.filter_parse_error** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @calc_stack(i8* %15, i32* %11, i32* %12, i32* %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  %20 = load i32, i32* %14, align 4
  switch i32 %20, label %31 [
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %19
  %22 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %23 = load i32, i32* @FILT_ERR_MISSING_QUOTE, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @parse_error(%struct.filter_parse_error* %22, i32 %23, i32 %24)
  br label %36

26:                                               ; preds = %19
  %27 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %28 = load i32, i32* @FILT_ERR_TOO_MANY_OPEN, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @parse_error(%struct.filter_parse_error* %27, i32 %28, i32 %29)
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %33 = load i32, i32* @FILT_ERR_TOO_MANY_CLOSE, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @parse_error(%struct.filter_parse_error* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26, %21
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %64

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @parse_pred, align 4
  %49 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  %50 = load %struct.filter_parse_error*, %struct.filter_parse_error** %9, align 8
  %51 = call %struct.prog_entry* @predicate_parse(i8* %45, i32 %46, i32 %47, i32 %48, %struct.trace_event_call* %49, %struct.filter_parse_error* %50)
  store %struct.prog_entry* %51, %struct.prog_entry** %10, align 8
  %52 = load %struct.prog_entry*, %struct.prog_entry** %10, align 8
  %53 = call i64 @IS_ERR(%struct.prog_entry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load %struct.prog_entry*, %struct.prog_entry** %10, align 8
  %57 = call i32 @PTR_ERR(%struct.prog_entry* %56)
  store i32 %57, i32* %5, align 4
  br label %64

58:                                               ; preds = %44
  %59 = load %struct.event_filter*, %struct.event_filter** %8, align 8
  %60 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.prog_entry*, %struct.prog_entry** %10, align 8
  %63 = call i32 @rcu_assign_pointer(i32 %61, %struct.prog_entry* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %55, %41, %36
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @calc_stack(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @parse_error(%struct.filter_parse_error*, i32, i32) #1

declare dso_local %struct.prog_entry* @predicate_parse(i8*, i32, i32, i32, %struct.trace_event_call*, %struct.filter_parse_error*) #1

declare dso_local i64 @IS_ERR(%struct.prog_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.prog_entry*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.prog_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
