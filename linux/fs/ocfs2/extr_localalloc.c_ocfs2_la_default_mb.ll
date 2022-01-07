; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_la_default_mb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_la_default_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }

@OCFS2_LA_OLD_DEFAULT = common dso_local global i32 0, align 4
@OCFS2_LA_MAX_DEFAULT_MB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_la_default_mb(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 3
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %8, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 3
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ocfs2_group_bitmap_size(%struct.super_block* %16, i32 0, i32 %19)
  %21 = mul nsw i32 8, %20
  %22 = call i32 @ocfs2_clusters_to_megabytes(%struct.super_block* %15, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 512
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 8192
  br i1 %31, label %42, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 4096
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %27
  %43 = load i32, i32* @OCFS2_LA_OLD_DEFAULT, align 4
  store i32 %43, i32* %2, align 4
  br label %103

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %5, align 4
  %46 = sub i32 %45, 16
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, -5
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @OCFS2_LA_MAX_DEFAULT_MB, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @OCFS2_LA_MAX_DEFAULT_MB, align 4
  %56 = mul i32 2, %55
  %57 = icmp ugt i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 256, i32* %4, align 4
  br label %69

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %64, %59
  %62 = load i32, i32* %9, align 4
  %63 = icmp ugt i32 %62, 256
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %61

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %58
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %72 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = udiv i32 %73, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 3
  %80 = load %struct.super_block*, %struct.super_block** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @ocfs2_clusters_to_megabytes(%struct.super_block* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %70
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %90 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %89, i32 0, i32 3
  %91 = load %struct.super_block*, %struct.super_block** %90, align 8
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = call i32 @ocfs2_local_alloc_size(%struct.super_block* %92)
  %94 = mul nsw i32 %93, 8
  %95 = call i32 @ocfs2_clusters_to_megabytes(%struct.super_block* %91, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %88
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %42
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ocfs2_clusters_to_megabytes(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_group_bitmap_size(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ocfs2_local_alloc_size(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
