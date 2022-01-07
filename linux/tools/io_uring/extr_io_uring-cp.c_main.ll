; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: infile outfile\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@infd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"open infile\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@outfd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"open outfile\00", align 1
@QD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.io_uring, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 1, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i64 (i8*, i32, ...) @open(i8* %19, i32 %20)
  store i64 %21, i64* @infd, align 8
  %22 = load i64, i64* @infd, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

26:                                               ; preds = %16
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @O_WRONLY, align 4
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @O_TRUNC, align 4
  %34 = or i32 %32, %33
  %35 = call i64 (i8*, i32, ...) @open(i8* %29, i32 %34, i32 420)
  store i64 %35, i64* @outfd, align 8
  %36 = load i64, i64* @outfd, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %59

40:                                               ; preds = %26
  %41 = load i32, i32* @QD, align 4
  %42 = call i64 @setup_context(i32 %41, %struct.io_uring* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %59

45:                                               ; preds = %40
  %46 = load i64, i64* @infd, align 8
  %47 = call i64 @get_file_size(i64 %46, i32* %7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @copy_file(%struct.io_uring* %6, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i64, i64* @infd, align 8
  %54 = call i32 @close(i64 %53)
  %55 = load i64, i64* @outfd, align 8
  %56 = call i32 @close(i64 %55)
  %57 = call i32 @io_uring_queue_exit(%struct.io_uring* %6)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %49, %44, %38, %24, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @open(i8*, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setup_context(i32, %struct.io_uring*) #1

declare dso_local i64 @get_file_size(i64, i32*) #1

declare dso_local i32 @copy_file(%struct.io_uring*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @io_uring_queue_exit(%struct.io_uring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
