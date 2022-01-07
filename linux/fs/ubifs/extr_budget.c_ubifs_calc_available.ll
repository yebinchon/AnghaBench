; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_calc_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_calc_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_calc_available(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %9, %13
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %27, %30
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %2
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %52, %2
  %68 = load i64, i64* %6, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* %6, align 8
  br label %73

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i64 [ %71, %70 ], [ 0, %72 ]
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
