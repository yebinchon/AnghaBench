; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_disk_set_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_disk_set_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bmbt_rec = type { i32, i32 }
%struct.xfs_bmbt_irec = type { i64, i32, i32, i32 }

@XFS_EXT_NORM = common dso_local global i64 0, align 8
@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@BMBT_STARTOFF_BITLEN = common dso_local global i64 0, align 8
@BMBT_BLOCKCOUNT_BITLEN = common dso_local global i64 0, align 8
@BMBT_STARTBLOCK_BITLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bmbt_disk_set_all(%struct.xfs_bmbt_rec* %0, %struct.xfs_bmbt_irec* %1) #0 {
  %3 = alloca %struct.xfs_bmbt_rec*, align 8
  %4 = alloca %struct.xfs_bmbt_irec*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_bmbt_rec* %0, %struct.xfs_bmbt_rec** %3, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %4, align 8
  %6 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XFS_EXT_NORM, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XFS_EXT_NORM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i1 [ true, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @BMBT_STARTOFF_BITLEN, align 8
  %31 = sub nsw i64 64, %30
  %32 = call i32 @xfs_mask64hi(i64 %31)
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @BMBT_BLOCKCOUNT_BITLEN, align 8
  %42 = sub nsw i64 64, %41
  %43 = call i32 @xfs_mask64hi(i64 %42)
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @BMBT_STARTBLOCK_BITLEN, align 8
  %53 = sub nsw i64 64, %52
  %54 = call i32 @xfs_mask64hi(i64 %53)
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 63
  %62 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %63 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 %64, 9
  %66 = or i32 %61, %65
  %67 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %68 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 43
  %71 = or i32 %66, %70
  %72 = load %struct.xfs_bmbt_rec*, %struct.xfs_bmbt_rec** %3, align 8
  %73 = getelementptr inbounds %struct.xfs_bmbt_rec, %struct.xfs_bmbt_rec* %72, i32 0, i32 1
  %74 = call i32 @put_unaligned_be64(i32 %71, i32* %73)
  %75 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %76 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 21
  %79 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %80 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @xfs_mask64lo(i32 21)
  %83 = trunc i64 %82 to i32
  %84 = and i32 %81, %83
  %85 = or i32 %78, %84
  %86 = load %struct.xfs_bmbt_rec*, %struct.xfs_bmbt_rec** %3, align 8
  %87 = getelementptr inbounds %struct.xfs_bmbt_rec, %struct.xfs_bmbt_rec* %86, i32 0, i32 0
  %88 = call i32 @put_unaligned_be64(i32 %85, i32* %87)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_mask64hi(i64) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i64 @xfs_mask64lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
