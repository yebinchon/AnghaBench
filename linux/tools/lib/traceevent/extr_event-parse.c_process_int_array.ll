; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_int_array.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_int_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_print_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@TEP_PRINT_INT_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@TEP_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_print_arg*, i8**)* @process_int_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_int_array(%struct.tep_event* %0, %struct.tep_print_arg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca %struct.tep_print_arg*, align 8
  %7 = alloca i8**, align 8
  store %struct.tep_event* %0, %struct.tep_event** %5, align 8
  store %struct.tep_print_arg* %1, %struct.tep_print_arg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %9 = call i32 @memset(%struct.tep_print_arg* %8, i32 0, i32 32)
  %10 = load i32, i32* @TEP_PRINT_INT_ARRAY, align 4
  %11 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %12 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %14 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %15 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @alloc_and_process_delim(%struct.tep_event* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %57

20:                                               ; preds = %3
  %21 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %22 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %23 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i64 @alloc_and_process_delim(%struct.tep_event* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %48

28:                                               ; preds = %20
  %29 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %30 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %31 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = call i64 @alloc_and_process_delim(%struct.tep_event* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32** %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load i8**, i8*** %7, align 8
  %38 = call i32 @read_token_item(i8** %37)
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %35
  %40 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %41 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free_arg(i32* %43)
  %45 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %46 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %39, %27
  %49 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %50 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @free_arg(i32* %52)
  %54 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %55 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %48, %19
  %58 = load i8**, i8*** %7, align 8
  store i8* null, i8** %58, align 8
  %59 = load i32, i32* @TEP_EVENT_ERROR, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %36
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.tep_print_arg*, i32, i32) #1

declare dso_local i64 @alloc_and_process_delim(%struct.tep_event*, i8*, i32**) #1

declare dso_local i32 @read_token_item(i8**) #1

declare dso_local i32 @free_arg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
