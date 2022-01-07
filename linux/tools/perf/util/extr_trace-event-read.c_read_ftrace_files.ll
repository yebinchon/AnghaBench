; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_ftrace_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_ftrace_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*)* @read_ftrace_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ftrace_files(%struct.tep_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %3, align 8
  %8 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %9 = call i32 @read4(%struct.tep_handle* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %16 = call i64 @read8(%struct.tep_handle* %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @read_ftrace_file(%struct.tep_handle* %17, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @read4(%struct.tep_handle*) #1

declare dso_local i64 @read8(%struct.tep_handle*) #1

declare dso_local i32 @read_ftrace_file(%struct.tep_handle*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
