; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.f2fs_sb_info = type { i32, %struct.f2fs_sb_info**, i32, %struct.f2fs_sb_info*, i64, %struct.f2fs_sb_info*, i32*, i32*, i32, i32, i32 }
%struct.cp_control = type { i32 }

@SBI_IS_DIRTY = common dso_local global i32 0, align 4
@CP_UMOUNT_FLAG = common dso_local global i32 0, align 4
@CP_UMOUNT = common dso_local global i32 0, align 4
@CP_TRIMMED = common dso_local global i32 0, align 4
@NR_PAGE_TYPE = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @f2fs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cp_control, align 4
  %7 = alloca %struct.cp_control, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %8)
  store %struct.f2fs_sb_info* %9, %struct.f2fs_sb_info** %3, align 8
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call i32 @f2fs_quota_off_umount(%struct.super_block* %10)
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %12, i32 0, i32 9
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = load i32, i32* @SBI_IS_DIRTY, align 4
  %17 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = load i32, i32* @CP_UMOUNT_FLAG, align 4
  %22 = call i32 @is_set_ckpt_flags(%struct.f2fs_sb_info* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %1
  %25 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %6, i32 0, i32 0
  %26 = load i32, i32* @CP_UMOUNT, align 4
  store i32 %26, i32* %25, align 4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %28 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %27, %struct.cp_control* %6)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = call i32 @f2fs_issue_discard_timeout(%struct.f2fs_sb_info* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = call i64 @f2fs_hw_support_discard(%struct.f2fs_sb_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %37 = call i64 @f2fs_hw_should_discard(%struct.f2fs_sb_info* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35, %29
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %7, i32 0, i32 0
  %49 = load i32, i32* @CP_UMOUNT, align 4
  %50 = load i32, i32* @CP_TRIMMED, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %48, align 4
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %53 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %52, %struct.cp_control* %7)
  br label %54

54:                                               ; preds = %47, %44, %39, %35
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %56 = call i32 @f2fs_release_ino_entry(%struct.f2fs_sb_info* %55, i32 1)
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %58 = call i32 @f2fs_leave_shrinker(%struct.f2fs_sb_info* %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %60 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %59, i32 0, i32 9
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %63 = call i32 @f2fs_flush_merged_writes(%struct.f2fs_sb_info* %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %65 = call i32 @f2fs_wait_on_all_pages_writeback(%struct.f2fs_sb_info* %64)
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %68 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %66, i32 %69)
  %71 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %72 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @iput(i32* %73)
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %78 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @iput(i32* %79)
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %82 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %84 = call i32 @f2fs_destroy_stats(%struct.f2fs_sb_info* %83)
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %86 = call i32 @f2fs_destroy_node_manager(%struct.f2fs_sb_info* %85)
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %88 = call i32 @f2fs_destroy_segment_manager(%struct.f2fs_sb_info* %87)
  %89 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %90 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %89, i32 0, i32 5
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %90, align 8
  %92 = call i32 @kvfree(%struct.f2fs_sb_info* %91)
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %94 = call i32 @f2fs_unregister_sysfs(%struct.f2fs_sb_info* %93)
  %95 = load %struct.super_block*, %struct.super_block** %2, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %98 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %54
  %102 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %103 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @crypto_free_shash(i64 %104)
  br label %106

106:                                              ; preds = %101, %54
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %108 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %107, i32 0, i32 3
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %108, align 8
  %110 = call i32 @kvfree(%struct.f2fs_sb_info* %109)
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %112 = call i32 @destroy_device_list(%struct.f2fs_sb_info* %111)
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %114 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @mempool_destroy(i32 %115)
  %117 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %118 = call i32 @destroy_percpu_info(%struct.f2fs_sb_info* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %132, %106
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @NR_PAGE_TYPE, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %125 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %124, i32 0, i32 1
  %126 = load %struct.f2fs_sb_info**, %struct.f2fs_sb_info*** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %126, i64 %128
  %130 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %129, align 8
  %131 = call i32 @kvfree(%struct.f2fs_sb_info* %130)
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %119

135:                                              ; preds = %119
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %137 = call i32 @kvfree(%struct.f2fs_sb_info* %136)
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local i32 @f2fs_quota_off_umount(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @f2fs_issue_discard_timeout(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_hw_support_discard(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_hw_should_discard(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_release_ino_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_leave_shrinker(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @f2fs_flush_merged_writes(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_wait_on_all_pages_writeback(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @iput(i32*) #1

declare dso_local i32 @f2fs_destroy_stats(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_destroy_node_manager(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_destroy_segment_manager(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kvfree(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_unregister_sysfs(%struct.f2fs_sb_info*) #1

declare dso_local i32 @crypto_free_shash(i64) #1

declare dso_local i32 @destroy_device_list(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @destroy_percpu_info(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
