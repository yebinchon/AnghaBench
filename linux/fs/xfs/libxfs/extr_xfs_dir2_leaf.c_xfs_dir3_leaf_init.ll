; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32*, i32, %struct.xfs_dir3_leaf_hdr* }
%struct.xfs_dir3_leaf_hdr = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.xfs_dir2_leaf = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.xfs_dir2_leaf_tail = type { i64 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i64 0, align 8
@xfs_dir3_leaf1_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_LEAF1_BUF = common dso_local global i32 0, align 4
@xfs_dir3_leafn_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_LEAFN_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, i32, i64)* @xfs_dir3_leaf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_leaf_init(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfs_dir2_leaf*, align 8
  %12 = alloca %struct.xfs_dir3_leaf_hdr*, align 8
  %13 = alloca %struct.xfs_dir2_leaf_tail*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 2
  %16 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %15, align 8
  %17 = bitcast %struct.xfs_dir3_leaf_hdr* %16 to %struct.xfs_dir2_leaf*
  store %struct.xfs_dir2_leaf* %17, %struct.xfs_dir2_leaf** %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i1 [ true, %5 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 1
  %31 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_10__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %25
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 2
  %36 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %35, align 8
  store %struct.xfs_dir3_leaf_hdr* %36, %struct.xfs_dir3_leaf_hdr** %12, align 8
  %37 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %12, align 8
  %38 = call i32 @memset(%struct.xfs_dir3_leaf_hdr* %37, i32 0, i32 40)
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i64, i64* @XFS_DIR3_LEAF1_MAGIC, align 8
  %44 = call i8* @cpu_to_be16(i64 %43)
  br label %48

45:                                               ; preds = %33
  %46 = load i64, i64* @XFS_DIR3_LEAFN_MAGIC, align 8
  %47 = call i8* @cpu_to_be16(i64 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i8* [ %44, %42 ], [ %47, %45 ]
  %50 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %12, align 8
  %51 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %55 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_be64(i32 %56)
  %58 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @cpu_to_be64(i32 %61)
  %63 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %12, align 8
  %64 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %12, align 8
  %67 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %70 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = call i32 @uuid_copy(i32* %68, i32* %71)
  br label %83

73:                                               ; preds = %25
  %74 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %75 = bitcast %struct.xfs_dir2_leaf* %74 to %struct.xfs_dir3_leaf_hdr*
  %76 = call i32 @memset(%struct.xfs_dir3_leaf_hdr* %75, i32 0, i32 40)
  %77 = load i64, i64* %10, align 8
  %78 = call i8* @cpu_to_be16(i64 %77)
  %79 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %80 = getelementptr inbounds %struct.xfs_dir2_leaf, %struct.xfs_dir2_leaf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 8
  br label %83

83:                                               ; preds = %73, %48
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %89 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %11, align 8
  %92 = bitcast %struct.xfs_dir2_leaf* %91 to %struct.xfs_dir3_leaf_hdr*
  %93 = call %struct.xfs_dir2_leaf_tail* @xfs_dir2_leaf_tail_p(i32 %90, %struct.xfs_dir3_leaf_hdr* %92)
  store %struct.xfs_dir2_leaf_tail* %93, %struct.xfs_dir2_leaf_tail** %13, align 8
  %94 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %13, align 8
  %95 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %97 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %96, i32 0, i32 0
  store i32* @xfs_dir3_leaf1_buf_ops, i32** %97, align 8
  %98 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %99 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %100 = load i32, i32* @XFS_BLFT_DIR_LEAF1_BUF, align 4
  %101 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %98, %struct.xfs_buf* %99, i32 %100)
  br label %109

102:                                              ; preds = %83
  %103 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %104 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %103, i32 0, i32 0
  store i32* @xfs_dir3_leafn_buf_ops, i32** %104, align 8
  %105 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %106 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %107 = load i32, i32* @XFS_BLFT_DIR_LEAFN_BUF, align 4
  %108 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %105, %struct.xfs_buf* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %87
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.xfs_dir3_leaf_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local %struct.xfs_dir2_leaf_tail* @xfs_dir2_leaf_tail_p(i32, %struct.xfs_dir3_leaf_hdr*) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
