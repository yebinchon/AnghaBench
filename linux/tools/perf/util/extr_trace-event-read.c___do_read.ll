; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c___do_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c___do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repipe = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"repiping input file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @__do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_read(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %40, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @read(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load i64, i64* @repipe, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* @STDOUT_FILENO, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @write(i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %26
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  br label %12

48:                                               ; preds = %12
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %37, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
