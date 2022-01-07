; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_branch.c_branch_type_count.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_branch.c_branch_type_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_type_stat = type { i32, i32, i32, i32, i32* }
%struct.branch_flags = type { i64 }

@PERF_BR_UNKNOWN = common dso_local global i64 0, align 8
@PERF_BR_COND = common dso_local global i64 0, align 8
@AREA_2M = common dso_local global i32 0, align 4
@AREA_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @branch_type_count(%struct.branch_type_stat* %0, %struct.branch_flags* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.branch_type_stat*, align 8
  %6 = alloca %struct.branch_flags*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.branch_type_stat* %0, %struct.branch_type_stat** %5, align 8
  store %struct.branch_flags* %1, %struct.branch_flags** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.branch_flags*, %struct.branch_flags** %6, align 8
  %10 = getelementptr inbounds %struct.branch_flags, %struct.branch_flags* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PERF_BR_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  br label %71

18:                                               ; preds = %14
  %19 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %20 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.branch_flags*, %struct.branch_flags** %6, align 8
  %23 = getelementptr inbounds %struct.branch_flags, %struct.branch_flags* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.branch_flags*, %struct.branch_flags** %6, align 8
  %29 = getelementptr inbounds %struct.branch_flags, %struct.branch_flags* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PERF_BR_COND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %39 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %44 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @AREA_2M, align 4
  %52 = call i64 @cross_area(i64 %49, i64 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %56 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @AREA_4K, align 4
  %63 = call i64 @cross_area(i64 %60, i64 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %67 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %17, %70, %54
  ret void
}

declare dso_local i64 @cross_area(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
