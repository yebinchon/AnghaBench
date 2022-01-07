; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_inode.c_xchk_inode_xref_finobt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_inode.c_xchk_inode_xref_finobt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_inobt_rec_incore = type { i64, i32 }

@XFS_LOOKUP_LE = common dso_local global i32 0, align 4
@XFS_INODES_PER_CHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_scrub*, i32)* @xchk_inode_xref_finobt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xchk_inode_xref_finobt(%struct.xfs_scrub* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inobt_rec_incore, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @xchk_skip_xref(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %90

21:                                               ; preds = %14
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @XFS_INO_TO_AGINO(i32 %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @XFS_LOOKUP_LE, align 4
  %33 = call i32 @xfs_inobt_lookup(i32 %30, i64 %31, i32 %32, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %34, i32* %8, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %21
  br label %90

44:                                               ; preds = %40
  %45 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %46 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @xfs_inobt_get_rec(i32 %48, %struct.xfs_inobt_rec_incore* %5, i32* %7)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %51 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %52 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @xchk_should_check_xref(%struct.xfs_scrub* %50, i32* %8, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %44
  br label %90

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %5, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XFS_INODES_PER_CHUNK, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* %6, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %60
  br label %90

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %5, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %5, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = call i32 @XFS_INOBT_MASK(i64 %79)
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %85 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %86 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub* %84, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %20, %43, %59, %72, %83, %73
  ret void
}

declare dso_local i64 @xchk_skip_xref(i32) #1

declare dso_local i64 @XFS_INO_TO_AGINO(i32, i32) #1

declare dso_local i32 @xfs_inobt_lookup(i32, i64, i32, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.xfs_scrub*, i32*, i32*) #1

declare dso_local i32 @xfs_inobt_get_rec(i32, %struct.xfs_inobt_rec_incore*, i32*) #1

declare dso_local i32 @XFS_INOBT_MASK(i64) #1

declare dso_local i32 @xchk_btree_xref_set_corrupt(%struct.xfs_scrub*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
