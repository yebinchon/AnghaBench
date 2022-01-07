; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_kmod-path.c_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_kmod-path.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_path = type { i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"kmod_path__parse\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s - alloc name %d, kmod %d, comp %d, name '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"wrong kmod\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"wrong comp\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"wrong name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i8*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kmod_path, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = call i32 @memset(%struct.kmod_path* %11, i32 0, i32 16)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @__kmod_path__parse(%struct.kmod_path* %11, i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %21, i32 %23, i32 %25, i64 %27)
  %29 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strcmp(i8* %48, i64 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i1 [ false, %43 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %65

58:                                               ; preds = %5
  %59 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %54
  %66 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %11, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @free(i64 %67)
  ret i32 0
}

declare dso_local i32 @memset(%struct.kmod_path*, i32, i32) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local i32 @__kmod_path__parse(%struct.kmod_path*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
