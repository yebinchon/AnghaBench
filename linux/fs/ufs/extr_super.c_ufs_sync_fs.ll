; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32 }
%struct.ufs_super_block_first = type { i32 }
%struct.ufs_super_block_third = type { i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@UFS_ST_MASK = common dso_local global i32 0, align 4
@UFS_ST_SUN = common dso_local global i32 0, align 4
@UFS_ST_SUNOS = common dso_local global i32 0, align 4
@UFS_ST_SUNx86 = common dso_local global i32 0, align 4
@UFS_FSOK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ufs_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_sb_private_info*, align 8
  %6 = alloca %struct.ufs_super_block_first*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  store %struct.ufs_sb_private_info* %21, %struct.ufs_sb_private_info** %5, align 8
  %22 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %23 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %22)
  store %struct.ufs_super_block_first* %23, %struct.ufs_super_block_first** %6, align 8
  %24 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %25 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %24)
  store %struct.ufs_super_block_third* %25, %struct.ufs_super_block_third** %7, align 8
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = call i32 @ufs_get_seconds(%struct.super_block* %26)
  %28 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %29 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @UFS_ST_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @UFS_ST_SUN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @UFS_ST_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @UFS_ST_SUNOS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @UFS_ST_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @UFS_ST_SUNx86, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41, %35, %2
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %50 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %51 = load i64, i64* @UFS_FSOK, align 8
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %54 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @fs32_to_cpu(%struct.super_block* %52, i32 %55)
  %57 = sub nsw i64 %51, %56
  %58 = call i32 @ufs_set_fs_state(%struct.super_block* %48, %struct.ufs_super_block_first* %49, %struct.ufs_super_block_third* %50, i64 %57)
  br label %59

59:                                               ; preds = %47, %41
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = call i32 @ufs_put_cstotal(%struct.super_block* %60)
  %62 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @ufs_get_seconds(%struct.super_block*) #1

declare dso_local i32 @ufs_set_fs_state(%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_third*, i64) #1

declare dso_local i64 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_put_cstotal(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
