; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_event_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_event_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error parsing event file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*, i8*, i64)* @read_event_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_event_file(%struct.tep_handle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i8* @malloc(i64 %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @do_read(i8* %17, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %34

23:                                               ; preds = %16
  %24 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @parse_event_file(%struct.tep_handle* %24, i8* %25, i64 %26, i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %23
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @do_read(i8*, i64) #1

declare dso_local i32 @parse_event_file(%struct.tep_handle*, i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
