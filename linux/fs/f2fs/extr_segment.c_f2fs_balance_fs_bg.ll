; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_balance_fs_bg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_balance_fs_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32 }
%struct.blk_plug = type { i32 }

@SBI_POR_DOING = common dso_local global i32 0, align 4
@EXTENT_CACHE = common dso_local global i32 0, align 4
@EXTENT_CACHE_SHRINK_NUMBER = common dso_local global i32 0, align 4
@NAT_ENTRIES = common dso_local global i32 0, align 4
@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@FREE_NIDS = common dso_local global i32 0, align 4
@MAX_FREE_NIDS = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@INO_ENTRIES = common dso_local global i32 0, align 4
@CP_TIME = common dso_local global i32 0, align 4
@DATA_FLUSH = common dso_local global i32 0, align 4
@FILE_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_balance_fs_bg(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.blk_plug, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = load i32, i32* @SBI_POR_DOING, align 4
  %6 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %4, i32 %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %107

10:                                               ; preds = %1
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %12 = load i32, i32* @EXTENT_CACHE, align 4
  %13 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %17 = load i32, i32* @EXTENT_CACHE_SHRINK_NUMBER, align 4
  %18 = call i32 @f2fs_shrink_extent_tree(%struct.f2fs_sb_info* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %10
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %21 = load i32, i32* @NAT_ENTRIES, align 4
  %22 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %26 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %27 = call i32 @f2fs_try_to_free_nats(%struct.f2fs_sb_info* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %30 = load i32, i32* @FREE_NIDS, align 4
  %31 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %35 = load i32, i32* @MAX_FREE_NIDS, align 4
  %36 = call i32 @f2fs_try_to_free_nids(%struct.f2fs_sb_info* %34, i32 %35)
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %39 = call i32 @f2fs_build_free_nids(%struct.f2fs_sb_info* %38, i32 0, i32 0)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %42 = load i32, i32* @REQ_TIME, align 4
  %43 = call i32 @is_idle(%struct.f2fs_sb_info* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %47 = call i64 @excess_dirty_nats(%struct.f2fs_sb_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %51 = call i64 @excess_dirty_nodes(%struct.f2fs_sb_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %107

54:                                               ; preds = %49, %45, %40
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %56 = load i32, i32* @NAT_ENTRIES, align 4
  %57 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %61 = load i32, i32* @INO_ENTRIES, align 4
  %62 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %66 = call i64 @excess_prefree_segs(%struct.f2fs_sb_info* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %70 = call i64 @excess_dirty_nats(%struct.f2fs_sb_info* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %74 = call i64 @excess_dirty_nodes(%struct.f2fs_sb_info* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %78 = load i32, i32* @CP_TIME, align 4
  %79 = call i64 @f2fs_time_over(%struct.f2fs_sb_info* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %76, %72, %68, %64, %59, %54
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %83 = load i32, i32* @DATA_FLUSH, align 4
  %84 = call i64 @test_opt(%struct.f2fs_sb_info* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %88 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %87, i32 0, i32 2
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = call i32 @blk_start_plug(%struct.blk_plug* %3)
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %92 = load i32, i32* @FILE_INODE, align 4
  %93 = call i32 @f2fs_sync_dirty_inodes(%struct.f2fs_sb_info* %91, i32 %92)
  %94 = call i32 @blk_finish_plug(%struct.blk_plug* %3)
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %96 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  br label %98

98:                                               ; preds = %86, %81
  %99 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %100 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @f2fs_sync_fs(i32 %101, i32 1)
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %104 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @stat_inc_bg_cp_count(i32 %105)
  br label %107

107:                                              ; preds = %9, %53, %98, %76
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_available_free_memory(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_shrink_extent_tree(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_try_to_free_nats(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_try_to_free_nids(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_build_free_nids(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @is_idle(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @excess_dirty_nats(%struct.f2fs_sb_info*) #1

declare dso_local i64 @excess_dirty_nodes(%struct.f2fs_sb_info*) #1

declare dso_local i64 @excess_prefree_segs(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_time_over(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @f2fs_sync_dirty_inodes(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @stat_inc_bg_cp_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
