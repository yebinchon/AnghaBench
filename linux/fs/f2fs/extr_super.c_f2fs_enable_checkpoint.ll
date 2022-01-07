; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_enable_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_enable_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32 }

@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@SBI_IS_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @f2fs_enable_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_enable_checkpoint(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %3 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %4 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %7 = call i32 @f2fs_dirty_to_prefree(%struct.f2fs_sb_info* %6)
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %9 = load i32, i32* @SBI_CP_DISABLED, align 4
  %10 = call i32 @clear_sbi_flag(%struct.f2fs_sb_info* %8, i32 %9)
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %12 = load i32, i32* @SBI_IS_DIRTY, align 4
  %13 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %11, i32 %12)
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %15 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %14, i32 0, i32 1
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %18 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @f2fs_sync_fs(i32 %19, i32 1)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f2fs_dirty_to_prefree(%struct.f2fs_sb_info*) #1

declare dso_local i32 @clear_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
