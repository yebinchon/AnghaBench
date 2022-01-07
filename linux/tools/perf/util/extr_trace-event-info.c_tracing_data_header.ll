; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_tracing_data_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_tracing_data_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@output_fd = common dso_local global i32 0, align 4
@VERSION = common dso_local global i8* null, align 8
@page_size = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tracing_data_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_data_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8 23, i8* %4, align 16
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 1
  store i8 8, i8* %5, align 1
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 2
  store i8 68, i8* %6, align 2
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %8 = getelementptr inbounds i8, i8* %7, i64 3
  %9 = call i32 @memcpy(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %10 = load i32, i32* @output_fd, align 4
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %12 = call i32 @write(i32 %10, i8* %11, i32 10)
  %13 = icmp ne i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %52

15:                                               ; preds = %0
  %16 = load i8*, i8** @VERSION, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @output_fd, align 4
  %20 = load i8*, i8** @VERSION, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @write(i32 %19, i8* %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 -1, i32* %1, align 4
  br label %52

26:                                               ; preds = %15
  %27 = call i64 (...) @bigendian()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8 1, i8* %30, align 16
  br label %33

31:                                               ; preds = %26
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %32, align 16
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* @output_fd, align 4
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %36 = call i32 @write(i32 %34, i8* %35, i32 1)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %1, align 4
  br label %52

39:                                               ; preds = %33
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8 8, i8* %40, align 16
  %41 = load i32, i32* @output_fd, align 4
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %43 = call i32 @write(i32 %41, i8* %42, i32 1)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %1, align 4
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @output_fd, align 4
  %48 = call i32 @write(i32 %47, i8* @page_size, i32 4)
  %49 = icmp ne i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %1, align 4
  br label %52

51:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %51, %50, %45, %38, %25, %14
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @bigendian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
