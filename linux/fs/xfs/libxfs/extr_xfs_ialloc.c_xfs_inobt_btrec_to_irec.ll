; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_inobt_btrec_to_irec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_inobt_btrec_to_irec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%union.xfs_btree_rec = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.xfs_inobt_rec_incore = type { i32, i8*, i32, i32, i8* }

@XFS_INOBT_HOLEMASK_FULL = common dso_local global i32 0, align 4
@XFS_INODES_PER_CHUNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inobt_btrec_to_irec(%struct.xfs_mount* %0, %union.xfs_btree_rec* %1, %struct.xfs_inobt_rec_incore* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %union.xfs_btree_rec*, align 8
  %6 = alloca %struct.xfs_inobt_rec_incore*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %union.xfs_btree_rec* %1, %union.xfs_btree_rec** %5, align 8
  store %struct.xfs_inobt_rec_incore* %2, %struct.xfs_inobt_rec_incore** %6, align 8
  %7 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %5, align 8
  %8 = bitcast %union.xfs_btree_rec* %7 to %struct.TYPE_8__*
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @be32_to_cpu(i32 %10)
  %12 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = call i64 @xfs_sb_version_hassparseinodes(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %5, align 8
  %20 = bitcast %union.xfs_btree_rec* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be16_to_cpu(i32 %24)
  %26 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %27 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %5, align 8
  %29 = bitcast %union.xfs_btree_rec* %28 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %35 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %5, align 8
  %37 = bitcast %union.xfs_btree_rec* %36 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %43 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %60

44:                                               ; preds = %3
  %45 = load i32, i32* @XFS_INOBT_HOLEMASK_FULL, align 4
  %46 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %47 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @XFS_INODES_PER_CHUNK, align 4
  %49 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %50 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %5, align 8
  %52 = bitcast %union.xfs_btree_rec* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @be32_to_cpu(i32 %56)
  %58 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %59 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %44, %18
  %61 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %5, align 8
  %62 = bitcast %union.xfs_btree_rec* %61 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @be64_to_cpu(i32 %64)
  %66 = load %struct.xfs_inobt_rec_incore*, %struct.xfs_inobt_rec_incore** %6, align 8
  %67 = getelementptr inbounds %struct.xfs_inobt_rec_incore, %struct.xfs_inobt_rec_incore* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_sb_version_hassparseinodes(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
