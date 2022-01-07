; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_info_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_info_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.gcov_ctr_info* }
%struct.gcov_ctr_info = type { i32, i64* }

@GCOV_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_info_add(%struct.gcov_info* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_ctr_info*, align 8
  %6 = alloca %struct.gcov_ctr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %80, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %13 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %10
  %17 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %18 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %24, align 8
  store %struct.gcov_ctr_info* %25, %struct.gcov_ctr_info** %5, align 8
  %26 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %27 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %33, align 8
  store %struct.gcov_ctr_info* %34, %struct.gcov_ctr_info** %6, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %76, %16
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GCOV_COUNTERS, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @counter_active(%struct.gcov_info* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %76

45:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %49 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %54 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %61 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %59
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %73 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %72, i32 1
  store %struct.gcov_ctr_info* %73, %struct.gcov_ctr_info** %5, align 8
  %74 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %75 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %74, i32 1
  store %struct.gcov_ctr_info* %75, %struct.gcov_ctr_info** %6, align 8
  br label %76

76:                                               ; preds = %71, %44
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %35

79:                                               ; preds = %35
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %10

83:                                               ; preds = %10
  ret void
}

declare dso_local i32 @counter_active(%struct.gcov_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
