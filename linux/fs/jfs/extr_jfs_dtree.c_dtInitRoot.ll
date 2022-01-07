; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtInitRoot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtInitRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_inode_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.dtslot* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.dtslot = type { i32 }
%struct.tlock = type { i32 }
%struct.dt_lock = type { i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tblock = type { i64 }
%struct.metapage = type { i32 }

@COMMIT_PWMAP = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@IDATASIZE = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@tlckBTROOT = common dso_local global i32 0, align 4
@DTROOTMAXSLOT = common dso_local global i32 0, align 4
@DXD_INDEX = common dso_local global i32 0, align 4
@BT_ROOT = common dso_local global i32 0, align 4
@BT_LEAF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtInitRoot(i32 %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jfs_inode_info*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dtslot*, align 8
  %11 = alloca %struct.tlock*, align 8
  %12 = alloca %struct.dt_lock*, align 8
  %13 = alloca %struct.lv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.tblock*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %16)
  store %struct.jfs_inode_info* %17, %struct.jfs_inode_info** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i64 @DO_INDEX(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @jfs_dirtable_inline(%struct.inode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.tblock* @tid_to_tblock(i32 %26)
  store %struct.tblock* %27, %struct.tblock** %15, align 8
  %28 = load %struct.tblock*, %struct.tblock** %15, align 8
  %29 = getelementptr inbounds %struct.tblock, %struct.tblock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load %struct.tblock*, %struct.tblock** %15, align 8
  %32 = getelementptr inbounds %struct.tblock, %struct.tblock* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i32, i32* @COMMIT_PWMAP, align 4
  %36 = call i32 @xtTruncate(i32 %33, %struct.inode* %34, i32 0, i32 %35)
  %37 = load i32, i32* @COMMIT_Stale, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i32 @set_cflag(i32 %37, %struct.inode* %38)
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.tblock*, %struct.tblock** %15, align 8
  %42 = getelementptr inbounds %struct.tblock, %struct.tblock* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %46

43:                                               ; preds = %21
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %25
  %47 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %48 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %47, i32 0, i32 0
  store i32 2, i32* %48, align 8
  br label %53

49:                                               ; preds = %3
  %50 = load i32, i32* @IDATASIZE, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %57 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %56, i32 0, i32 2
  %58 = bitcast i32* %57 to %struct.metapage*
  %59 = load i32, i32* @tlckDTREE, align 4
  %60 = load i32, i32* @tlckENTRY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @tlckBTROOT, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.tlock* @txLock(i32 %54, %struct.inode* %55, %struct.metapage* %58, i32 %63)
  store %struct.tlock* %64, %struct.tlock** %11, align 8
  %65 = load %struct.tlock*, %struct.tlock** %11, align 8
  %66 = getelementptr inbounds %struct.tlock, %struct.tlock* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to %struct.dt_lock*
  store %struct.dt_lock* %67, %struct.dt_lock** %12, align 8
  %68 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %69 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %75 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %74, i32 0, i32 1
  %76 = load %struct.lv*, %struct.lv** %75, align 8
  %77 = getelementptr inbounds %struct.lv, %struct.lv* %76, i64 0
  store %struct.lv* %77, %struct.lv** %13, align 8
  %78 = load %struct.lv*, %struct.lv** %13, align 8
  %79 = getelementptr inbounds %struct.lv, %struct.lv* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @DTROOTMAXSLOT, align 4
  %81 = load %struct.lv*, %struct.lv** %13, align 8
  %82 = getelementptr inbounds %struct.lv, %struct.lv* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %84 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %88 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %87, i32 0, i32 1
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %8, align 8
  %89 = load i32, i32* @DXD_INDEX, align 4
  %90 = load i32, i32* @BT_ROOT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @BT_LEAF, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  store i32 1, i32* %9, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.dtslot*, %struct.dtslot** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %102, i64 %104
  store %struct.dtslot* %105, %struct.dtslot** %10, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %116, %53
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @DTROOTMAXSLOT, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.dtslot*, %struct.dtslot** %10, align 8
  %115 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.dtslot*, %struct.dtslot** %10, align 8
  %118 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %117, i32 1
  store %struct.dtslot* %118, %struct.dtslot** %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %108

121:                                              ; preds = %108
  %122 = load %struct.dtslot*, %struct.dtslot** %10, align 8
  %123 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  store i32 8, i32* %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @cpu_to_le32(i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  ret void
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i64 @DO_INDEX(%struct.inode*) #1

declare dso_local i32 @jfs_dirtable_inline(%struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @xtTruncate(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
