; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___trace_define_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___trace_define_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ftrace_event_field = type { i8*, i8*, i32, i32, i32, i32, i32 }

@field_cachep = common dso_local global i32 0, align 4
@GFP_TRACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FILTER_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i8*, i32, i32, i32, i32)* @__trace_define_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__trace_define_field(%struct.list_head* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ftrace_event_field*, align 8
  store %struct.list_head* %0, %struct.list_head** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @field_cachep, align 4
  %18 = load i32, i32* @GFP_TRACE, align 4
  %19 = call %struct.ftrace_event_field* @kmem_cache_alloc(i32 %17, i32 %18)
  store %struct.ftrace_event_field* %19, %struct.ftrace_event_field** %16, align 8
  %20 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %21 = icmp ne %struct.ftrace_event_field* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %58

25:                                               ; preds = %7
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %28 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %31 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @FILTER_OTHER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @filter_assign_type(i8* %36)
  %38 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %39 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %43 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %47 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %50 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %53 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %55 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %54, i32 0, i32 6
  %56 = load %struct.list_head*, %struct.list_head** %9, align 8
  %57 = call i32 @list_add(i32* %55, %struct.list_head* %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %44, %22
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.ftrace_event_field* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @filter_assign_type(i8*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
