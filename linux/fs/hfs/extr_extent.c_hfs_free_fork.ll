; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_free_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_free_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_cat_file = type { %struct.hfs_extent*, i32, %struct.hfs_extent*, i32, i32 }
%struct.hfs_extent = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@HFS_FK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_free_fork(%struct.super_block* %0, %struct.hfs_cat_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hfs_cat_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfs_find_data, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hfs_extent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.hfs_cat_file* %1, %struct.hfs_cat_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %6, align 8
  %17 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @be32_to_cpu(i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @HFS_FK_DATA, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %6, align 8
  %25 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @be32_to_cpu(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %6, align 8
  %29 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %28, i32 0, i32 2
  %30 = load %struct.hfs_extent*, %struct.hfs_extent** %29, align 8
  store %struct.hfs_extent* %30, %struct.hfs_extent** %13, align 8
  br label %39

31:                                               ; preds = %3
  %32 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %6, align 8
  %33 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @be32_to_cpu(i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.hfs_cat_file*, %struct.hfs_cat_file** %6, align 8
  %37 = getelementptr inbounds %struct.hfs_cat_file, %struct.hfs_cat_file* %36, i32 0, i32 0
  %38 = load %struct.hfs_extent*, %struct.hfs_extent** %37, align 8
  store %struct.hfs_extent* %38, %struct.hfs_extent** %13, align 8
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = call %struct.TYPE_6__* @HFS_SB(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sdiv i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %124

49:                                               ; preds = %39
  store i64 0, i64* %10, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.hfs_extent*, %struct.hfs_extent** %13, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hfs_extent, %struct.hfs_extent* %54, i64 %56
  %58 = getelementptr inbounds %struct.hfs_extent, %struct.hfs_extent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be16_to_cpu(i32 %59)
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = load %struct.hfs_extent*, %struct.hfs_extent** %13, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @hfs_free_extents(%struct.super_block* %67, %struct.hfs_extent* %68, i64 %69, i64 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  br label %124

76:                                               ; preds = %66
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %124

81:                                               ; preds = %76
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = call %struct.TYPE_6__* @HFS_SB(%struct.super_block* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @hfs_find_init(i32 %85, %struct.hfs_find_data* %8)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %4, align 4
  br label %124

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %117, %91
  %93 = load %struct.hfs_extent*, %struct.hfs_extent** %13, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @__hfs_ext_read_extent(%struct.hfs_find_data* %8, %struct.hfs_extent* %93, i64 %94, i64 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %121

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %8, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @be16_to_cpu(i32 %106)
  store i64 %107, i64* %11, align 8
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = load %struct.hfs_extent*, %struct.hfs_extent** %13, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %11, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @hfs_free_extents(%struct.super_block* %108, %struct.hfs_extent* %109, i64 %112, i64 %113)
  %115 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %8)
  %116 = load i64, i64* %11, align 8
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %101
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %92, label %121

121:                                              ; preds = %117, %100
  %122 = call i32 @hfs_find_exit(%struct.hfs_find_data* %8)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %121, %89, %80, %74, %48
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @HFS_SB(%struct.super_block*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @hfs_free_extents(%struct.super_block*, %struct.hfs_extent*, i64, i64) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @__hfs_ext_read_extent(%struct.hfs_find_data*, %struct.hfs_extent*, i64, i64, i32) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
