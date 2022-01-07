; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da3_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.xfs_inode*, %struct.xfs_trans* }
%struct.xfs_inode = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)* }
%struct.xfs_da_intnode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.xfs_da3_icnode_hdr = type { i32, i32, i32 }
%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_buf = type { i32, %struct.xfs_da_intnode*, i32* }
%struct.xfs_da3_node_hdr = type { i32, %struct.TYPE_4__ }

@XFS_DA_NODE_MAXDEPTH = common dso_local global i32 0, align 4
@xfs_da3_node_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DA_NODE_BUF = common dso_local global i32 0, align 4
@XFS_DA3_NODE_MAGIC = common dso_local global i32 0, align 4
@XFS_DA_NODE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da3_node_create(%struct.xfs_da_args* %0, i32 %1, i32 %2, %struct.xfs_buf** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_da_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_da_intnode*, align 8
  %13 = alloca %struct.xfs_trans*, align 8
  %14 = alloca %struct.xfs_mount*, align 8
  %15 = alloca %struct.xfs_da3_icnode_hdr, align 4
  %16 = alloca %struct.xfs_buf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.xfs_inode*, align 8
  %19 = alloca %struct.xfs_da3_node_hdr*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.xfs_buf** %3, %struct.xfs_buf*** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %21 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %20, i32 0, i32 1
  %22 = load %struct.xfs_trans*, %struct.xfs_trans** %21, align 8
  store %struct.xfs_trans* %22, %struct.xfs_trans** %13, align 8
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %24 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %23, i32 0, i32 0
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %24, align 8
  store %struct.xfs_mount* %25, %struct.xfs_mount** %14, align 8
  %26 = bitcast %struct.xfs_da3_icnode_hdr* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 12, i1 false)
  %27 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %28 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %27, i32 0, i32 0
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %28, align 8
  store %struct.xfs_inode* %29, %struct.xfs_inode** %18, align 8
  %30 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %31 = call i32 @trace_xfs_da_node_create(%struct.xfs_da_args* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %34 = icmp sle i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @xfs_da_get_buf(%struct.xfs_trans* %37, %struct.xfs_inode* %38, i32 %39, i32 -1, %struct.xfs_buf** %16, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %6, align 4
  br label %120

46:                                               ; preds = %5
  %47 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %48 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %47, i32 0, i32 2
  store i32* @xfs_da3_node_buf_ops, i32** %48, align 8
  %49 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %51 = load i32, i32* @XFS_BLFT_DA_NODE_BUF, align 4
  %52 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %49, %struct.xfs_buf* %50, i32 %51)
  %53 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %54 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %53, i32 0, i32 1
  %55 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %54, align 8
  store %struct.xfs_da_intnode* %55, %struct.xfs_da_intnode** %12, align 8
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %57 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %56, i32 0, i32 0
  %58 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_6__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %46
  %61 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %62 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %61, i32 0, i32 1
  %63 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %62, align 8
  %64 = bitcast %struct.xfs_da_intnode* %63 to %struct.xfs_da3_node_hdr*
  store %struct.xfs_da3_node_hdr* %64, %struct.xfs_da3_node_hdr** %19, align 8
  %65 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %19, align 8
  %66 = bitcast %struct.xfs_da3_node_hdr* %65 to %struct.xfs_da_intnode*
  %67 = call i32 @memset(%struct.xfs_da_intnode* %66, i32 0, i32 32)
  %68 = load i32, i32* @XFS_DA3_NODE_MAGIC, align 4
  %69 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %15, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %71 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @cpu_to_be64(i32 %72)
  %74 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %19, align 8
  %75 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %78 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %77, i32 0, i32 0
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %78, align 8
  %80 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_be64(i32 %81)
  %83 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %19, align 8
  %84 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load %struct.xfs_da3_node_hdr*, %struct.xfs_da3_node_hdr** %19, align 8
  %87 = getelementptr inbounds %struct.xfs_da3_node_hdr, %struct.xfs_da3_node_hdr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %90 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @uuid_copy(i32* %88, i32* %91)
  br label %96

93:                                               ; preds = %46
  %94 = load i32, i32* @XFS_DA_NODE_MAGIC, align 4
  %95 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %15, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %60
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %15, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %100 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32 (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)*, i32 (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)** %102, align 8
  %104 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %12, align 8
  %105 = call i32 %103(%struct.xfs_da_intnode* %104, %struct.xfs_da3_icnode_hdr* %15)
  %106 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %107 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %108 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %12, align 8
  %109 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %12, align 8
  %110 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %109, i32 0, i32 0
  %111 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %112 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_da_intnode* %108, i32* %110, i32 %115)
  %117 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %106, %struct.xfs_buf* %107, i32 %116)
  %118 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %119 = load %struct.xfs_buf**, %struct.xfs_buf*** %10, align 8
  store %struct.xfs_buf* %118, %struct.xfs_buf** %119, align 8
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %96, %44
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trace_xfs_da_node_create(%struct.xfs_da_args*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_da_get_buf(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32) #2

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #2

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_6__*) #2

declare dso_local i32 @memset(%struct.xfs_da_intnode*, i32, i32) #2

declare dso_local i8* @cpu_to_be64(i32) #2

declare dso_local i32 @uuid_copy(i32*, i32*) #2

declare dso_local i32 @xfs_trans_log_buf(%struct.xfs_trans*, %struct.xfs_buf*, i32) #2

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_da_intnode*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
