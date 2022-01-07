; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier_log.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier_log.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Test log_level 0...\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Test log_size < 128...\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Test log_buff = NULL...\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Test oversized buffer...\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Test exact buffer...\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Test undersized buffers...\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"test_verifier_log: OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LOG_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @LOG_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i32, i32* @LOG_SIZE, align 4
  %19 = call i32 @memset(i8* %17, i32 1, i32 %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @LOG_SIZE, align 4
  %22 = call i32 @test_log_bad(i8* %17, i32 %21, i32 0)
  %23 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @test_log_bad(i8* %17, i32 15, i32 1)
  %25 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @LOG_SIZE, align 4
  %27 = call i32 @test_log_bad(i8* null, i32 %26, i32 1)
  %28 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @LOG_SIZE, align 4
  %30 = load i32, i32* @LOG_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* @EACCES, align 4
  %33 = call i32 @test_log_good(i8* %14, i32 %29, i64 %31, i64 0, i32 %32, i8* %14)
  %34 = call i64 @strlen(i8* %14)
  store i64 %34, i64* %9, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* @LOG_SIZE, align 4
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 2
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* @EACCES, align 4
  %41 = call i32 @test_log_good(i8* %17, i32 %36, i64 %38, i64 %39, i32 %40, i8* %14)
  %42 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %70, %2
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 64
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %14, i64 %51
  store i8 1, i8* %52, align 1
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %53, %55
  %57 = getelementptr inbounds i8, i8* %14, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* @LOG_SIZE, align 4
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %64, %66
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = call i32 @test_log_good(i8* %17, i32 %58, i64 %63, i64 %67, i32 %68, i8* %14)
  br label %70

70:                                               ; preds = %46
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %43

73:                                               ; preds = %43
  %74 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @test_log_bad(i8*, i32, i32) #2

declare dso_local i32 @test_log_good(i8*, i32, i64, i64, i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
