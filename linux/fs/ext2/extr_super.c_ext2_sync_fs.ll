; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_sb_info = type { i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i32 }

@EXT2_VALID_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"setting valid to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext2_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_sb_info*, align 8
  %6 = alloca %struct.ext2_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %7)
  store %struct.ext2_sb_info* %8, %struct.ext2_sb_info** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %10, i32 0, i32 1
  %12 = load %struct.ext2_super_block*, %struct.ext2_super_block** %11, align 8
  store %struct.ext2_super_block* %12, %struct.ext2_super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call i32 @dquot_writeback_dquots(%struct.super_block* %13, i32 -1)
  %15 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.ext2_super_block*, %struct.ext2_super_block** %6, align 8
  %19 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EXT2_VALID_FS, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = call i32 @ext2_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EXT2_VALID_FS, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.ext2_super_block*, %struct.ext2_super_block** %6, align 8
  %31 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = load %struct.ext2_super_block*, %struct.ext2_super_block** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ext2_sync_super(%struct.super_block* %38, %struct.ext2_super_block* %39, i32 %40)
  ret i32 0
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @dquot_writeback_dquots(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext2_debug(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ext2_sync_super(%struct.super_block*, %struct.ext2_super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
