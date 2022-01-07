; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_file_depths.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_file_depths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { i32, %struct.file* }
%struct.file = type { i32 }

@submitters = common dso_local global %struct.submitter* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @file_depths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_depths(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.submitter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load %struct.submitter*, %struct.submitter** @submitters, align 8
  %8 = getelementptr inbounds %struct.submitter, %struct.submitter* %7, i64 0
  store %struct.submitter* %8, %struct.submitter** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.submitter*, %struct.submitter** %3, align 8
  %15 = getelementptr inbounds %struct.submitter, %struct.submitter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.submitter*, %struct.submitter** %3, align 8
  %20 = getelementptr inbounds %struct.submitter, %struct.submitter* %19, i32 0, i32 1
  %21 = load %struct.file*, %struct.file** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.file, %struct.file* %21, i64 %23
  store %struct.file* %24, %struct.file** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  %27 = load %struct.submitter*, %struct.submitter** %3, align 8
  %28 = getelementptr inbounds %struct.submitter, %struct.submitter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  br label %49

40:                                               ; preds = %18
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %40, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %12

53:                                               ; preds = %12
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
