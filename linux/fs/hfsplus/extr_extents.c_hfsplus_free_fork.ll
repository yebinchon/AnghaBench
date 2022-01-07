; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_free_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_free_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_fork_raw = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_free_fork(%struct.super_block* %0, i64 %1, %struct.hfsplus_fork_raw* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hfsplus_fork_raw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfs_find_data, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.hfsplus_fork_raw* %2, %struct.hfsplus_fork_raw** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %8, align 8
  %18 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @be32_to_cpu(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %111

24:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %8, align 8
  %30 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be32_to_cpu(i32 %36)
  %38 = load i64, i64* %13, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %8, align 8
  %46 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @hfsplus_free_extents(%struct.super_block* %44, %struct.TYPE_11__* %47, i64 %48, i64 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %5, align 4
  br label %111

55:                                               ; preds = %43
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %111

60:                                               ; preds = %55
  %61 = load %struct.super_block*, %struct.super_block** %6, align 8
  %62 = call %struct.TYPE_12__* @HFSPLUS_SB(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hfs_find_init(i32 %64, %struct.hfs_find_data* %10)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %5, align 4
  br label %111

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %104, %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data* %10, %struct.TYPE_11__* %72, i64 %73, i64 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %108

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be32_to_cpu(i32 %85)
  store i64 %86, i64* %14, align 8
  %87 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %10)
  %88 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.super_block*, %struct.super_block** %6, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %14, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @hfsplus_free_extents(%struct.super_block* %92, %struct.TYPE_11__* %93, i64 %96, i64 %97)
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %12, align 8
  %100 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = call i32 @mutex_lock(i32* %102)
  br label %104

104:                                              ; preds = %80
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %71, label %108

108:                                              ; preds = %104, %79
  %109 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %68, %59, %53, %23
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @hfsplus_free_extents(%struct.super_block*, %struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_12__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data*, %struct.TYPE_11__*, i64, i64, i32) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
