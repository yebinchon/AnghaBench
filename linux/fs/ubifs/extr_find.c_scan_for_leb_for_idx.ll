; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_scan_for_leb_for_idx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_scan_for_leb_for_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i64, i64, i32 }
%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.scan_data = type { i32 }

@scan_for_idx_cb = common dso_local global i64 0, align 8
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_lprops* (%struct.ubifs_info*)* @scan_for_leb_for_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_lprops* @scan_for_leb_for_idx(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_lprops*, align 8
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca %struct.scan_data, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* @scan_for_idx_cb, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info* %8, i32 -1, i32 %11, i32 %13, %struct.scan_data* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.ubifs_lprops* @ERR_PTR(i32 %18)
  store %struct.ubifs_lprops* %19, %struct.ubifs_lprops** %2, align 8
  br label %97

20:                                               ; preds = %1
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br label %35

35:                                               ; preds = %28, %20
  %36 = phi i1 [ false, %20 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ubifs_assert(%struct.ubifs_info* %21, i32 %37)
  %39 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %44 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %43, i32 %45)
  store %struct.ubifs_lprops* %46, %struct.ubifs_lprops** %4, align 8
  %47 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %48 = call i64 @IS_ERR(%struct.ubifs_lprops* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  store %struct.ubifs_lprops* %51, %struct.ubifs_lprops** %2, align 8
  br label %97

52:                                               ; preds = %35
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %55 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.scan_data, %struct.scan_data* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ubifs_assert(%struct.ubifs_info* %53, i32 %60)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %64 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %67 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ubifs_assert(%struct.ubifs_info* %62, i32 %74)
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %77 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @LPROPS_TAKEN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @ubifs_assert(%struct.ubifs_info* %76, i32 %84)
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %87 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %88 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @LPROPS_INDEX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @ubifs_assert(%struct.ubifs_info* %86, i32 %94)
  %96 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  store %struct.ubifs_lprops* %96, %struct.ubifs_lprops** %2, align 8
  br label %97

97:                                               ; preds = %52, %50, %17
  %98 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %2, align 8
  ret %struct.ubifs_lprops* %98
}

declare dso_local i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info*, i32, i32, i32, %struct.scan_data*) #1

declare dso_local %struct.ubifs_lprops* @ERR_PTR(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
