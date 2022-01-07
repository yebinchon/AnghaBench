; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_event_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_event_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*)* @read_event_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_event_files(%struct.tep_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %3, align 8
  %11 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %12 = call i32 @read4(%struct.tep_handle* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %49, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = call i8* (...) @read_string()
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %53

22:                                               ; preds = %17
  %23 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %24 = call i32 @read4(%struct.tep_handle* %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %43, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %31 = call i64 @read8(%struct.tep_handle* %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @read_event_file(%struct.tep_handle* %32, i8* %33, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %2, align 4
  br label %53

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %13

52:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %38, %21
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @read4(%struct.tep_handle*) #1

declare dso_local i8* @read_string(...) #1

declare dso_local i64 @read8(%struct.tep_handle*) #1

declare dso_local i32 @read_event_file(%struct.tep_handle*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
