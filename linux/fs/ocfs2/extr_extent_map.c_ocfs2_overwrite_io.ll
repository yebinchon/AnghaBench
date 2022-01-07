; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_overwrite_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_overwrite_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_extent_rec = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_overwrite_io(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_extent_rec, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocfs2_super* @OCFS2_SB(i32 %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %14, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i64 @ocfs2_size_fits_inline_data(%struct.buffer_head* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %102

36:                                               ; preds = %27
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %102

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %40, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @ocfs2_clusters_for_bytes(i32 %47, i32 %50)
  store i32 %51, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %84, %39
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %92

62:                                               ; preds = %60
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @ocfs2_get_clusters_nocache(%struct.inode* %63, %struct.buffer_head* %64, i32 %65, i32* null, %struct.ocfs2_extent_rec* %15, i32* %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %100

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %15, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %92

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %15, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %92

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %15, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %15, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %13, align 4
  br label %52

92:                                               ; preds = %83, %76, %60
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %36, %34
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_size_fits_inline_data(%struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters_nocache(%struct.inode*, %struct.buffer_head*, i32, i32*, %struct.ocfs2_extent_rec*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
