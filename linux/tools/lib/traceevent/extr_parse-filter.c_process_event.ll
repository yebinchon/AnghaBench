; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@TEP_FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@TEP_FILTER_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, i8*, %struct.tep_filter_arg**, i8*)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_event(%struct.tep_event* %0, i8* %1, %struct.tep_filter_arg** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tep_filter_arg**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tep_filter_arg** %2, %struct.tep_filter_arg*** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i32 @tep_buffer_init(i8* %11, i32 %13)
  %15 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %16 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @process_filter(%struct.tep_event* %15, %struct.tep_filter_arg** %16, i8* %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %8, align 8
  %25 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %24, align 8
  %26 = icmp ne %struct.tep_filter_arg* %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = call %struct.tep_filter_arg* (...) @allocate_arg()
  %29 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %8, align 8
  store %struct.tep_filter_arg* %28, %struct.tep_filter_arg** %29, align 8
  %30 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %8, align 8
  %31 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %30, align 8
  %32 = icmp eq %struct.tep_filter_arg* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %34, i32* %5, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load i32, i32* @TEP_FILTER_ARG_BOOLEAN, align 4
  %37 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %8, align 8
  %38 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %37, align 8
  %39 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @TEP_FILTER_FALSE, align 4
  %41 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %8, align 8
  %42 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %41, align 8
  %43 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %23
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %33, %21
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @tep_buffer_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @process_filter(%struct.tep_event*, %struct.tep_filter_arg**, i8*, i32) #1

declare dso_local %struct.tep_filter_arg* @allocate_arg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
