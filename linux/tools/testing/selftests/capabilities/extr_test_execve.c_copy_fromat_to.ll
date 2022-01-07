; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_copy_fromat_to.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_copy_fromat_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"open copy source - %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"read - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"write - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @copy_fromat_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_fromat_to(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @openat(i32 %11, i8* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @O_EXCL, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open(i8* %22, i32 %27, i32 448)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %21, %54
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %32 = call i64 @read(i32 %30, i8* %31, i32 4096)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %55

36:                                               ; preds = %29
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @write(i32 %44, i8* %45, i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %29

55:                                               ; preds = %35
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @close(i32 %58)
  ret void
}

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
