; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_counts_str_build.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_counts_str_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_type_stat = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c" (calltrace)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i64, i64, i64, i64, i64, %struct.branch_type_stat*)* @counts_str_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counts_str_build(i8* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, %struct.branch_type_stat* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.branch_type_stat*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store %struct.branch_type_stat* %9, %struct.branch_type_stat** %21, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %10
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @scnprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %11, align 4
  br label %59

29:                                               ; preds = %10
  %30 = load %struct.branch_type_stat*, %struct.branch_type_stat** %21, align 8
  %31 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load %struct.branch_type_stat*, %struct.branch_type_stat** %21, align 8
  %41 = call i32 @branch_to_str(i8* %35, i32 %36, i64 %37, i64 %38, i64 %39, %struct.branch_type_stat* %40)
  store i32 %41, i32* %22, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* %20, align 8
  %50 = call i32 @branch_from_str(i8* %43, i32 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49)
  store i32 %50, i32* %22, align 4
  br label %51

51:                                               ; preds = %42, %34
  %52 = load i32, i32* %22, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %22, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %25
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i32 @scnprintf(i8*, i32, i8*) #1

declare dso_local i32 @branch_to_str(i8*, i32, i64, i64, i64, %struct.branch_type_stat*) #1

declare dso_local i32 @branch_from_str(i8*, i32, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
