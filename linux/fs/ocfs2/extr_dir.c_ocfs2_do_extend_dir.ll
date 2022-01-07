; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_do_extend_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_do_extend_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_do_extend_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_do_extend_dir(%struct.super_block* %0, i32* %1, %struct.inode* %2, %struct.buffer_head* %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context* %5, %struct.buffer_head** %6) #0 {
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.buffer_head** %6, %struct.buffer_head*** %14, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call i64 @i_size_read(%struct.inode* %25)
  %27 = load %struct.super_block*, %struct.super_block** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ocfs2_clusters_to_bytes(%struct.super_block* %27, i32 %31)
  %33 = icmp eq i64 %26, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %7
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %20, align 4
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = load %struct.super_block*, %struct.super_block** %8, align 8
  %48 = call i64 @ocfs2_clusters_to_bytes(%struct.super_block* %47, i32 1)
  %49 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %46, i64 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %101

53:                                               ; preds = %41
  store i32 1, i32* %17, align 4
  %54 = load %struct.super_block*, %struct.super_block** %8, align 8
  %55 = call i32 @OCFS2_SB(%struct.super_block* %54)
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %60 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %61 = call i32 @ocfs2_add_inode_data(i32 %55, %struct.inode* %56, i32* %20, i32 1, i32 0, %struct.buffer_head* %57, i32* %58, %struct.ocfs2_alloc_context* %59, %struct.ocfs2_alloc_context* %60, i32* null)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %101

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %7
  %75 = load %struct.super_block*, %struct.super_block** %8, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call i64 @i_size_read(%struct.inode* %76)
  %78 = call i32 @ocfs2_blocks_for_bytes(%struct.super_block* %75, i64 %77)
  store i32 %78, i32* %19, align 4
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %79, i32 %80, i32* %18, i32* null, i32* null)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %101

87:                                               ; preds = %74
  %88 = load %struct.super_block*, %struct.super_block** %8, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %88, i32 %89)
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %90, %struct.buffer_head** %91, align 8
  %92 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %92, align 8
  %94 = icmp ne %struct.buffer_head* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %101

100:                                              ; preds = %87
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %100, %95, %84, %70, %52
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = load %struct.super_block*, %struct.super_block** %8, align 8
  %110 = call i64 @ocfs2_clusters_to_bytes(%struct.super_block* %109, i32 1)
  %111 = call i32 @dquot_free_space_nodirty(%struct.inode* %108, i64 %110)
  br label %112

112:                                              ; preds = %107, %104, %101
  %113 = load i32, i32* %15, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_to_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_add_inode_data(i32, %struct.inode*, i32*, i32, i32, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_blocks_for_bytes(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
