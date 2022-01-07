; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_try_to_merge_extent_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_try_to_merge_extent_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_map_item = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item*)* @ocfs2_try_to_merge_extent_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_try_to_merge_extent_map(%struct.ocfs2_extent_map_item* %0, %struct.ocfs2_extent_map_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_extent_map_item*, align 8
  %5 = alloca %struct.ocfs2_extent_map_item*, align 8
  store %struct.ocfs2_extent_map_item* %0, %struct.ocfs2_extent_map_item** %4, align 8
  store %struct.ocfs2_extent_map_item* %1, %struct.ocfs2_extent_map_item** %5, align 8
  %6 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %7 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = icmp eq i64 %8, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = icmp eq i64 %20, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %17
  %30 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  store i32 1, i32* %3, align 4
  br label %111

45:                                               ; preds = %29, %17, %2
  %46 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %45
  %58 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %57
  %70 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %84 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_map_item, %struct.ocfs2_extent_map_item* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  store i32 1, i32* %3, align 4
  br label %111

95:                                               ; preds = %69, %57, %45
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %98 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %99 = call i64 @ocfs2_ei_is_contained(%struct.ocfs2_extent_map_item* %97, %struct.ocfs2_extent_map_item* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %103 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %104 = call i64 @ocfs2_ei_is_contained(%struct.ocfs2_extent_map_item* %102, %struct.ocfs2_extent_map_item* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101, %96
  %107 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %4, align 8
  %108 = load %struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item** %5, align 8
  %109 = call i32 @ocfs2_copy_emi_fields(%struct.ocfs2_extent_map_item* %107, %struct.ocfs2_extent_map_item* %108)
  store i32 1, i32* %3, align 4
  br label %111

110:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106, %77, %37
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @ocfs2_ei_is_contained(%struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item*) #1

declare dso_local i32 @ocfs2_copy_emi_fields(%struct.ocfs2_extent_map_item*, %struct.ocfs2_extent_map_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
