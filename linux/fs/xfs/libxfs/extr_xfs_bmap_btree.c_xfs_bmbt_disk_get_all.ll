; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_disk_get_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_disk_get_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bmbt_rec = type { i32, i32 }
%struct.xfs_bmbt_irec = type { i32, i32, i32, i32 }

@BMBT_EXNTFLAG_BITLEN = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bmbt_disk_get_all(%struct.xfs_bmbt_rec* %0, %struct.xfs_bmbt_irec* %1) #0 {
  %3 = alloca %struct.xfs_bmbt_rec*, align 8
  %4 = alloca %struct.xfs_bmbt_irec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_bmbt_rec* %0, %struct.xfs_bmbt_rec** %3, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %4, align 8
  %7 = load %struct.xfs_bmbt_rec*, %struct.xfs_bmbt_rec** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_bmbt_rec, %struct.xfs_bmbt_rec* %7, i32 0, i32 1
  %9 = call i32 @get_unaligned_be64(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.xfs_bmbt_rec*, %struct.xfs_bmbt_rec** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_bmbt_rec, %struct.xfs_bmbt_rec* %10, i32 0, i32 0
  %12 = call i32 @get_unaligned_be64(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BMBT_EXNTFLAG_BITLEN, align 4
  %15 = sub nsw i32 64, %14
  %16 = call i32 @xfs_mask64lo(i32 %15)
  %17 = and i32 %13, %16
  %18 = ashr i32 %17, 9
  %19 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @xfs_mask64lo(i32 9)
  %23 = and i32 %21, %22
  %24 = shl i32 %23, 43
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 21
  %27 = or i32 %24, %26
  %28 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @xfs_mask64lo(i32 21)
  %32 = and i32 %30, %31
  %33 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BMBT_EXNTFLAG_BITLEN, align 4
  %37 = sub nsw i32 64, %36
  %38 = ashr i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @XFS_EXT_UNWRITTEN, align 4
  %42 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %2
  %45 = load i32, i32* @XFS_EXT_NORM, align 4
  %46 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @get_unaligned_be64(i32*) #1

declare dso_local i32 @xfs_mask64lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
