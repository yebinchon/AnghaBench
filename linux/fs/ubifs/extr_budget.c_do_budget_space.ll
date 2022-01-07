; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_do_budget_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_do_budget_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"out of indexing space: min_idx_lebs %d (old %d), rsvd_idx_lebs %d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"out of data space: available %lld, outstanding %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @do_budget_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_budget_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = call i32 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %18, %22
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %37, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %25
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, i64, i64, ...) @dbg_budg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %56, i32 %57)
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %25
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @ubifs_calc_available(%struct.ubifs_info* %62, i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %68, %72
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp slt i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %61
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = call i32 (i8*, i64, i64, ...) @dbg_budg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i32, i32* @ENOSPC, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %106

86:                                               ; preds = %61
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %4, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %96 = call i32 @can_use_rp(%struct.ubifs_info* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %94, %86
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %104 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %98, %80, %49
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dbg_budg(i8*, i64, i64, ...) #1

declare dso_local i64 @ubifs_calc_available(%struct.ubifs_info*, i32) #1

declare dso_local i32 @can_use_rp(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
