; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_block_operations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_block_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.writeback_control = type { i32, i32, i32 }
%struct.blk_plug = type { i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@DEFAULT_RETRY_QUOTA_FLUSH_COUNT = common dso_local global i32 0, align 4
@SBI_QUOTA_SKIP_FLUSH = common dso_local global i32 0, align 4
@SBI_QUOTA_NEED_FLUSH = common dso_local global i32 0, align 4
@F2FS_DIRTY_DENTS = common dso_local global i32 0, align 4
@DIR_INODE = common dso_local global i32 0, align 4
@F2FS_DIRTY_IMETA = common dso_local global i32 0, align 4
@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8
@FS_CP_NODE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @block_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_operations(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.writeback_control, align 4
  %4 = alloca %struct.blk_plug, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %8 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %3, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %3, i32 0, i32 1
  %10 = load i32, i32* @LONG_MAX, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %3, i32 0, i32 2
  %12 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = call i32 @blk_start_plug(%struct.blk_plug* %4)
  br label %14

14:                                               ; preds = %90, %69, %52, %1
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %16 = call i32 @f2fs_lock_all(%struct.f2fs_sb_info* %15)
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %18 = call i64 @__need_flush_quota(%struct.f2fs_sb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @DEFAULT_RETRY_QUOTA_FLUSH_COUNT, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %27 = load i32, i32* @SBI_QUOTA_SKIP_FLUSH, align 4
  %28 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %26, i32 %27)
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %30 = load i32, i32* @SBI_QUOTA_NEED_FLUSH, align 4
  %31 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %29, i32 %30)
  br label %55

32:                                               ; preds = %20
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %34 = call i32 @f2fs_unlock_all(%struct.f2fs_sb_info* %33)
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %36 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @down_read_trylock(i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @f2fs_quota_sync(%struct.TYPE_2__* %42, i32 -1)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  br label %52

52:                                               ; preds = %46, %32
  %53 = call i32 (...) @cond_resched()
  br label %14

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %57 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %58 = call i64 @get_pages(%struct.f2fs_sb_info* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %62 = call i32 @f2fs_unlock_all(%struct.f2fs_sb_info* %61)
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %64 = load i32, i32* @DIR_INODE, align 4
  %65 = call i32 @f2fs_sync_dirty_inodes(%struct.f2fs_sb_info* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %136

69:                                               ; preds = %60
  %70 = call i32 (...) @cond_resched()
  br label %14

71:                                               ; preds = %55
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %73 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %72, i32 0, i32 0
  %74 = call i32 @down_write(i32* %73)
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %76 = load i32, i32* @F2FS_DIRTY_IMETA, align 4
  %77 = call i64 @get_pages(%struct.f2fs_sb_info* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %81 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %80, i32 0, i32 0
  %82 = call i32 @up_write(i32* %81)
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %84 = call i32 @f2fs_unlock_all(%struct.f2fs_sb_info* %83)
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %86 = call i32 @f2fs_sync_inode_meta(%struct.f2fs_sb_info* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %136

90:                                               ; preds = %79
  %91 = call i32 (...) @cond_resched()
  br label %14

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %128, %92
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %95 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %94, i32 0, i32 2
  %96 = call i32 @down_write(i32* %95)
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %98 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %99 = call i64 @get_pages(%struct.f2fs_sb_info* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %93
  %102 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %103 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %102, i32 0, i32 2
  %104 = call i32 @up_write(i32* %103)
  %105 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %106 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @NODE, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = call i32 @atomic_inc(i32* %109)
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %112 = load i32, i32* @FS_CP_NODE_IO, align 4
  %113 = call i32 @f2fs_sync_node_pages(%struct.f2fs_sb_info* %111, %struct.writeback_control* %3, i32 0, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %115 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @NODE, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = call i32 @atomic_dec(i32* %118)
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %101
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %124 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %123, i32 0, i32 0
  %125 = call i32 @up_write(i32* %124)
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %127 = call i32 @f2fs_unlock_all(%struct.f2fs_sb_info* %126)
  br label %136

128:                                              ; preds = %101
  %129 = call i32 (...) @cond_resched()
  br label %93

130:                                              ; preds = %93
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %132 = call i32 @__prepare_cp_block(%struct.f2fs_sb_info* %131)
  %133 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %134 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %133, i32 0, i32 0
  %135 = call i32 @up_write(i32* %134)
  br label %136

136:                                              ; preds = %130, %122, %89, %68
  %137 = call i32 @blk_finish_plug(%struct.blk_plug* %4)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @f2fs_lock_all(%struct.f2fs_sb_info*) #1

declare dso_local i64 @__need_flush_quota(%struct.f2fs_sb_info*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_unlock_all(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @f2fs_quota_sync(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_sync_dirty_inodes(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_sync_inode_meta(%struct.f2fs_sb_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @f2fs_sync_node_pages(%struct.f2fs_sb_info*, %struct.writeback_control*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @__prepare_cp_block(%struct.f2fs_sb_info*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
