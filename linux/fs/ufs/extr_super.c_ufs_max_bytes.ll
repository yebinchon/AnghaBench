; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_max_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_max_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@UFS_NDADDR = common dso_local global i64 0, align 8
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ufs_max_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_max_bytes(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  store %struct.ufs_sb_private_info* %10, %struct.ufs_sb_private_info** %4, align 8
  %11 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %12 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 21
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i64, i64* @UFS_NDADDR, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 2, %23
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = add nsw i64 %22, %26
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 3, %28
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = add nsw i64 %27, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %17, %16
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %37 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %38 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %36, %39
  %41 = icmp sge i32 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %47 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %45, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %42
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
