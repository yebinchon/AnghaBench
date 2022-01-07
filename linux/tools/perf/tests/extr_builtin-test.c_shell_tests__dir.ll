; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_builtin-test.c_shell_tests__dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_builtin-test.c_shell_tests__dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"./tools/perf/tests\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"./tests\00", align 1
@__const.shell_tests__dir.devel_dirs = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/shell\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s/tests/shell\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @shell_tests__dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shell_tests__dir(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.shell_tests__dir.devel_dirs to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %8, align 4
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i8** %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @lstat(i8* %20, %struct.stat* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @scnprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @lstat(i8* %34, %struct.stat* %9)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %23
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %3, align 8
  br label %53

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  %45 = call i8* (...) @get_argv_exec_path()
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @scnprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %4, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %44, %37
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*) #2

declare dso_local i8* @get_argv_exec_path(...) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
