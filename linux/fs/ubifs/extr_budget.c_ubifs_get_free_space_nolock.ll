; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_get_free_space_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_get_free_space_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_get_free_space_nolock(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %14 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %13)
  %15 = icmp eq i64 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubifs_assert(%struct.ubifs_info* %8, i32 %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @ubifs_calc_available(%struct.ubifs_info* %27, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %1
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %46, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %66, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = mul nsw i32 %75, %82
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %5, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %54
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = sub nsw i64 %92, %93
  %95 = call i64 @ubifs_reported_space(%struct.ubifs_info* %91, i64 %94)
  store i64 %95, i64* %7, align 8
  br label %97

96:                                               ; preds = %54
  store i64 0, i64* %7, align 8
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i64 @ubifs_calc_available(%struct.ubifs_info*, i64) #1

declare dso_local i64 @ubifs_reported_space(%struct.ubifs_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
