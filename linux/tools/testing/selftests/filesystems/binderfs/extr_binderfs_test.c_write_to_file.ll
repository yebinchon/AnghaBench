; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c_write_to_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c_write_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s - Failed to open file %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s - Failed to write to file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to write to file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @write_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_to_file(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %19, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @write_nointr(i32 %27, i8* %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @close(i32 %41)
  br label %69

43:                                               ; preds = %36, %33
  br label %52

44:                                               ; preds = %26
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @close(i32 %50)
  br label %69

52:                                               ; preds = %48, %43
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* @errno, align 4
  %57 = load i64, i64* %11, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %49, %40
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @write_nointr(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
