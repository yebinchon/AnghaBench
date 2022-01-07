; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_irec_to_allocmask.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_irec_to_allocmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inobt_rec_incore = type { i32 }

@XFS_INODES_PER_HOLEMASK_BIT = common dso_local global i32 0, align 4
@XFS_INOBT_HOLEMASK_BITS = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inobt_irec_to_allocmask(%struct.xfs_inobt_rec_incore* %0) #0 {
  %2 = alloca %struct.xfs_inobt_rec_incore*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_inobt_rec_incore* %0, %struct.xfs_inobt_rec_incore** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @XFS_INODES_PER_HOLEMASK_BIT, align 4
  %8 = shl i32 1, %7
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @XFS_INOBT_HOLEMASK_BITS, align 4
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = call i32 @xfs_next_bit(i32* %6, i32 1, i32 0)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %22, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* @NBBY, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = icmp ult i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XFS_INODES_PER_HOLEMASK_BIT, align 4
  %34 = mul nsw i32 %32, %33
  %35 = shl i32 %31, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @xfs_next_bit(i32* %6, i32 1, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @xfs_next_bit(i32*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
