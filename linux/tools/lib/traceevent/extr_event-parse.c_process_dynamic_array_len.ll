; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_dynamic_array_len.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_dynamic_array_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_print_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.tep_format_field* }
%struct.tep_format_field = type { i32 }

@TEP_EVENT_ITEM = common dso_local global i32 0, align 4
@TEP_PRINT_DYNAMIC_ARRAY_LEN = common dso_local global i32 0, align 4
@TEP_EVENT_DELIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@TEP_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_print_arg*, i8**)* @process_dynamic_array_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dynamic_array_len(%struct.tep_event* %0, %struct.tep_print_arg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca %struct.tep_print_arg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.tep_format_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %5, align 8
  store %struct.tep_print_arg* %1, %struct.tep_print_arg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %12 = call i64 @read_expect_type(i32 %11, i8** %10)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* @TEP_PRINT_DYNAMIC_ARRAY_LEN, align 4
  %17 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %18 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.tep_format_field* @tep_find_field(%struct.tep_event* %19, i8* %20)
  store %struct.tep_format_field* %21, %struct.tep_format_field** %8, align 8
  %22 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %23 = icmp ne %struct.tep_format_field* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %42

25:                                               ; preds = %15
  %26 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %27 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %28 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store %struct.tep_format_field* %26, %struct.tep_format_field** %29, align 8
  %30 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %31 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @TEP_EVENT_DELIM, align 4
  %34 = call i64 @read_expected(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %45

37:                                               ; preds = %25
  %38 = call i32 @read_token(i8** %10)
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i8**, i8*** %7, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %24, %14
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free_token(i8* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i8**, i8*** %7, align 8
  store i8* null, i8** %46, align 8
  %47 = load i32, i32* @TEP_EVENT_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @read_expect_type(i32, i8**) #1

declare dso_local %struct.tep_format_field* @tep_find_field(%struct.tep_event*, i8*) #1

declare dso_local i64 @read_expected(i32, i8*) #1

declare dso_local i32 @read_token(i8**) #1

declare dso_local i32 @free_token(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
