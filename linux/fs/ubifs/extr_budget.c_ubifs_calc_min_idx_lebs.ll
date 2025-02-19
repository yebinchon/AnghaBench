; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_calc_min_idx_lebs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_calc_min_idx_lebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@MIN_INDEX_LEBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %8, %12
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %13, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = shl i64 %19, 1
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @div_u64(i64 %28, i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MIN_INDEX_LEBS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @MIN_INDEX_LEBS, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @div_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
