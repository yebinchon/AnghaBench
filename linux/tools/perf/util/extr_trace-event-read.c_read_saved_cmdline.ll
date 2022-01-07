; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_saved_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_saved_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error reading saved cmdlines\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*)* @read_saved_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_saved_cmdline(%struct.tep_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %3, align 8
  %7 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %8 = call i64 @read8(%struct.tep_handle* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @do_read(i8* %21, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @parse_saved_cmdline(%struct.tep_handle* %29, i8* %30, i64 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %18, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @read8(%struct.tep_handle*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @do_read(i8*, i64) #1

declare dso_local i32 @parse_saved_cmdline(%struct.tep_handle*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
