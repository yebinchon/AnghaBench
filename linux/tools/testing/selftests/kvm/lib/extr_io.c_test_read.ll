; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_io.c_test_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_io.c_test_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Unexpected count, count: %li\00", align 1
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unexpected read failure,\0A  rc: %zi errno: %i\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Unexpected EOF,\0A  rc: %zi num_read: %zi num_left: %zu\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Unexpected ret from read,\0A  rc: %zi errno: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @test_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp uge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i32, i8*, i64, ...) @TEST_ASSERT(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %60, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @read(i32 %19, i8* %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  switch i64 %23, label %43 [
    i64 -1, label %24
    i64 0, label %38
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  %30 = load i32, i32* @EINTR, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 (i32, i8*, i64, ...) @TEST_ASSERT(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %36)
  br label %59

38:                                               ; preds = %18
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 (i32, i8*, i64, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %39, i64 %40, i64 %41)
  br label %59

43:                                               ; preds = %18
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 (i32, i8*, i64, ...) @TEST_ASSERT(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %47, i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %43, %38, %32
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %18, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  ret i64 %65
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i64, ...) #1

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
