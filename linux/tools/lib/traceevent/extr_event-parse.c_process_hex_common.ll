; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_hex_common.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_hex_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_print_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@TEP_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_print_arg*, i8**, i32)* @process_hex_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_hex_common(%struct.tep_event* %0, %struct.tep_print_arg* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_print_arg*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_print_arg* %1, %struct.tep_print_arg** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %11 = call i32 @memset(%struct.tep_print_arg* %10, i32 0, i32 24)
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %14 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %16 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %17 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @alloc_and_process_delim(%struct.tep_event* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %24 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %25 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i64 @alloc_and_process_delim(%struct.tep_event* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %33

30:                                               ; preds = %22
  %31 = load i8**, i8*** %8, align 8
  %32 = call i32 @read_token_item(i8** %31)
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %29
  %34 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %35 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free_arg(i32* %37)
  %39 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %40 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %33, %21
  %43 = load i8**, i8*** %8, align 8
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* @TEP_EVENT_ERROR, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i32, i32* %5, align 4
  ret i32 %46
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
