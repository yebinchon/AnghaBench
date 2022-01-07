; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_ftrace_printk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_ftrace_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*)* @read_ftrace_printk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ftrace_printk(%struct.tep_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %3, align 8
  %6 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %7 = call i32 @read4(%struct.tep_handle* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 1
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %37

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @do_read(i8* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @free(i8* %24)
  store i32 -1, i32* %2, align 4
  br label %37

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @parse_ftrace_printk(%struct.tep_handle* %31, i8* %32, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @free(i8* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %23, %17, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @read4(%struct.tep_handle*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @do_read(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_ftrace_printk(%struct.tep_handle*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
