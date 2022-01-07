; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ifree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ifree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64 }
%struct.xfs_icluster = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_EXTENTS = common dso_local global i8* null, align 8
@XFS_ILOG_AOWNER = common dso_local global i32 0, align 4
@XFS_ILOG_DOWNER = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ifree(%struct.xfs_trans* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_icluster, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %8 = bitcast %struct.xfs_icluster* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %10 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %11 = call i32 @xfs_isilocked(%struct.xfs_inode* %9, i32 %10)
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %2
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %41 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @S_ISREG(i64 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %39, %2
  %48 = phi i1 [ true, %2 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %59 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %60 = call i32 @xfs_iunlink_remove(%struct.xfs_trans* %58, %struct.xfs_inode* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %133

65:                                               ; preds = %47
  %66 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %68 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @xfs_difree(%struct.xfs_trans* %66, i32 %69, %struct.xfs_icluster* %7)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %133

75:                                               ; preds = %65
  %76 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %77 = load i32, i32* @XFS_DATA_FORK, align 4
  %78 = call i32 @xfs_ifree_local_data(%struct.xfs_inode* %76, i32 %77)
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %80 = load i32, i32* @XFS_ATTR_FORK, align 4
  %81 = call i32 @xfs_ifree_local_data(%struct.xfs_inode* %79, i32 %80)
  %82 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %83 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %89 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  %91 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %92 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 7
  store i64 0, i64* %93, align 8
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %95 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load i8*, i8** @XFS_DINODE_FMT_EXTENTS, align 8
  %98 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %99 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  store i8* %97, i8** %100, align 8
  %101 = load i8*, i8** @XFS_DINODE_FMT_EXTENTS, align 8
  %102 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %103 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @XFS_ILOG_AOWNER, align 4
  %106 = load i32, i32* @XFS_ILOG_DOWNER, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %110 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %108
  store i32 %114, i32* %112, align 4
  %115 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %116 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %121 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %122 = load i32, i32* @XFS_ILOG_CORE, align 4
  %123 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %120, %struct.xfs_inode* %121, i32 %122)
  %124 = getelementptr inbounds %struct.xfs_icluster, %struct.xfs_icluster* %7, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %75
  %128 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %129 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %130 = call i32 @xfs_ifree_cluster(%struct.xfs_inode* %128, %struct.xfs_trans* %129, %struct.xfs_icluster* %7)
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %75
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %73, %63
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #2

declare dso_local %struct.TYPE_6__* @VFS_I(%struct.xfs_inode*) #2

declare dso_local i32 @S_ISREG(i64) #2

declare dso_local i32 @xfs_iunlink_remove(%struct.xfs_trans*, %struct.xfs_inode*) #2

declare dso_local i32 @xfs_difree(%struct.xfs_trans*, i32, %struct.xfs_icluster*) #2

declare dso_local i32 @xfs_ifree_local_data(%struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_ifree_cluster(%struct.xfs_inode*, %struct.xfs_trans*, %struct.xfs_icluster*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
