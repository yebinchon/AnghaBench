; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c___parse_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c___parse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }
%struct.tep_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@PRINT_ARGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*, %struct.tep_event**, i8*, i64, i8*)* @__parse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_event(%struct.tep_handle* %0, %struct.tep_event** %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tep_handle*, align 8
  %8 = alloca %struct.tep_event**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tep_event*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %7, align 8
  store %struct.tep_event** %1, %struct.tep_event*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.tep_event**, %struct.tep_event*** %8, align 8
  %15 = load %struct.tep_handle*, %struct.tep_handle** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @__tep_parse_format(%struct.tep_event** %14, %struct.tep_handle* %15, i8* %16, i64 %17, i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.tep_event**, %struct.tep_event*** %8, align 8
  %21 = load %struct.tep_event*, %struct.tep_event** %20, align 8
  store %struct.tep_event* %21, %struct.tep_event** %13, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %13, align 8
  %23 = icmp eq %struct.tep_event* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %41

26:                                               ; preds = %5
  %27 = load %struct.tep_handle*, %struct.tep_handle** %7, align 8
  %28 = icmp ne %struct.tep_handle* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.tep_handle*, %struct.tep_handle** %7, align 8
  %31 = load %struct.tep_event*, %struct.tep_event** %13, align 8
  %32 = call i64 @add_event(%struct.tep_handle* %30, %struct.tep_event* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %35, i32* %12, align 4
  br label %37

36:                                               ; preds = %29, %26
  store i32 0, i32* %6, align 4
  br label %41

37:                                               ; preds = %34
  %38 = load %struct.tep_event*, %struct.tep_event** %13, align 8
  %39 = call i32 @tep_free_event(%struct.tep_event* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %36, %24
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @__tep_parse_format(%struct.tep_event**, %struct.tep_handle*, i8*, i64, i8*) #1

declare dso_local i64 @add_event(%struct.tep_handle*, %struct.tep_event*) #1

declare dso_local i32 @tep_free_event(%struct.tep_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
