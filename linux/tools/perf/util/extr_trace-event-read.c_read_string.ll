; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@input_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"reading input file\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no data\00", align 1
@repipe = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"repiping input file string\00", align 1
@trace_data_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_string() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %49, %0
  %13 = load i32, i32* @input_fd, align 4
  %14 = call i64 @read(i32 %13, i8* %6, i32 1)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %63

24:                                               ; preds = %19
  %25 = load i64, i64* @repipe, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* @STDOUT_FILENO, align 4
  %29 = call i32 @write(i32 %28, i8* %6, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %63

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i8, i8* %6, align 1
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %11, i64 %44
  store i8 %41, i8* %45, align 1
  %46 = load i8, i8* %6, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %40
  br label %12

50:                                               ; preds = %48
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @trace_data_size, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* @trace_data_size, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i8* @malloc(i32 %54)
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @memcpy(i8* %59, i8* %11, i32 %60)
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %37, %22, %17
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i8* %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
