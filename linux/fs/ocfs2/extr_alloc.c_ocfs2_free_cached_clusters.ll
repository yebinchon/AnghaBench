; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_cached_block_free = type { %struct.ocfs2_cached_block_free*, i32, i32 }

@OCFS2_TRUNCATE_LOG_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_cached_block_free*)* @ocfs2_free_cached_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_free_cached_clusters(%struct.ocfs2_super* %0, %struct.ocfs2_cached_block_free* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_cached_block_free*, align 8
  %5 = alloca %struct.ocfs2_cached_block_free*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_cached_block_free* %1, %struct.ocfs2_cached_block_free** %4, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @inode_lock(%struct.inode* %12)
  br label %14

14:                                               ; preds = %66, %2
  %15 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %16 = icmp ne %struct.ocfs2_cached_block_free* %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %19 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %23 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %67

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %32 = load i32, i32* @OCFS2_TRUNCATE_LOG_UPDATE, align 4
  %33 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %31, i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %67

42:                                               ; preds = %30
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %46 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %49 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %43, i32* %44, i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %52, i32* %53)
  %55 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  store %struct.ocfs2_cached_block_free* %55, %struct.ocfs2_cached_block_free** %5, align 8
  %56 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %57 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %56, i32 0, i32 0
  %58 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %57, align 8
  store %struct.ocfs2_cached_block_free* %58, %struct.ocfs2_cached_block_free** %4, align 8
  %59 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %5, align 8
  %60 = call i32 @kfree(%struct.ocfs2_cached_block_free* %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %42
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %67

66:                                               ; preds = %42
  br label %14

67:                                               ; preds = %63, %37, %26, %14
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call i32 @inode_unlock(%struct.inode* %68)
  br label %70

70:                                               ; preds = %73, %67
  %71 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %72 = icmp ne %struct.ocfs2_cached_block_free* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  store %struct.ocfs2_cached_block_free* %74, %struct.ocfs2_cached_block_free** %5, align 8
  %75 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %76 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %75, i32 0, i32 0
  %77 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %76, align 8
  store %struct.ocfs2_cached_block_free* %77, %struct.ocfs2_cached_block_free** %4, align 8
  %78 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %5, align 8
  %79 = call i32 @kfree(%struct.ocfs2_cached_block_free* %78)
  br label %70

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_cached_block_free*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
