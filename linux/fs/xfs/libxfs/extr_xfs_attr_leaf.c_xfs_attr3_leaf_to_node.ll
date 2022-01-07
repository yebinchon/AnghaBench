; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_to_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_4__*, i32, %struct.xfs_inode* }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_inode = type { %struct.TYPE_3__*, %struct.xfs_mount* }
%struct.TYPE_3__ = type { i32 (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)*, %struct.xfs_da_node_entry* (%struct.xfs_da_intnode*)*, i32 (%struct.xfs_da3_icnode_hdr*, %struct.xfs_da_intnode*)* }
%struct.xfs_da_intnode = type { i32 }
%struct.xfs_da3_icnode_hdr = type { i32 }
%struct.xfs_da_node_entry = type { i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32 }
%struct.xfs_buf = type { %struct.xfs_da_intnode*, i32, i32 }
%struct.xfs_da3_blkinfo = type { i32 }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_BLFT_ATTR_LEAF_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_to_node(%struct.xfs_da_args* %0) #0 {
  %2 = alloca %struct.xfs_da_args*, align 8
  %3 = alloca %struct.xfs_attr_leafblock*, align 8
  %4 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %5 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %6 = alloca %struct.xfs_da_node_entry*, align 8
  %7 = alloca %struct.xfs_da3_icnode_hdr, align 4
  %8 = alloca %struct.xfs_da_intnode*, align 8
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_buf*, align 8
  %12 = alloca %struct.xfs_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfs_da3_blkinfo*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %2, align 8
  %16 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %16, i32 0, i32 2
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  store %struct.xfs_inode* %18, %struct.xfs_inode** %9, align 8
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %20 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %19, i32 0, i32 1
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  store %struct.xfs_mount* %21, %struct.xfs_mount** %10, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %11, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %12, align 8
  %22 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %23 = call i32 @trace_xfs_attr_leaf_to_node(%struct.xfs_da_args* %22)
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %25 = call i32 @xfs_da_grow_inode(%struct.xfs_da_args* %24, i32* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %172

29:                                               ; preds = %1
  %30 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %31 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %34 = call i32 @xfs_attr3_leaf_read(i32 %32, %struct.xfs_inode* %33, i32 0, i32 -1, %struct.xfs_buf** %11)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %172

38:                                               ; preds = %29
  %39 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %40 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @XFS_ATTR_FORK, align 4
  %45 = call i32 @xfs_da_get_buf(i32 %41, %struct.xfs_inode* %42, i32 %43, i32 -1, %struct.xfs_buf** %12, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %172

49:                                               ; preds = %38
  %50 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %51 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %54 = load i32, i32* @XFS_BLFT_ATTR_LEAF_BUF, align 4
  %55 = call i32 @xfs_trans_buf_set_type(i32 %52, %struct.xfs_buf* %53, i32 %54)
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %57 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %60 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %62 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %61, i32 0, i32 0
  %63 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %62, align 8
  %64 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %65 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %64, i32 0, i32 0
  %66 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %65, align 8
  %67 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %68 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @memcpy(%struct.xfs_da_intnode* %63, %struct.xfs_da_intnode* %66, i64 %71)
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %74 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %73, i32 0, i32 0
  %75 = call i64 @xfs_sb_version_hascrc(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %49
  %78 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %79 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %78, i32 0, i32 0
  %80 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %79, align 8
  %81 = bitcast %struct.xfs_da_intnode* %80 to %struct.xfs_da3_blkinfo*
  store %struct.xfs_da3_blkinfo* %81, %struct.xfs_da3_blkinfo** %15, align 8
  %82 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %83 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cpu_to_be64(i32 %84)
  %86 = load %struct.xfs_da3_blkinfo*, %struct.xfs_da3_blkinfo** %15, align 8
  %87 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %49
  %89 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %90 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %93 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %94 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  %99 = call i32 @xfs_trans_log_buf(i32 %91, %struct.xfs_buf* %92, i32 0, i64 %98)
  %100 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %101 = load i32, i32* @XFS_ATTR_FORK, align 4
  %102 = call i32 @xfs_da3_node_create(%struct.xfs_da_args* %100, i32 0, i32 1, %struct.xfs_buf** %11, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %88
  br label %172

106:                                              ; preds = %88
  %107 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %108 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %107, i32 0, i32 0
  %109 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %108, align 8
  store %struct.xfs_da_intnode* %109, %struct.xfs_da_intnode** %8, align 8
  %110 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %111 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32 (%struct.xfs_da3_icnode_hdr*, %struct.xfs_da_intnode*)*, i32 (%struct.xfs_da3_icnode_hdr*, %struct.xfs_da_intnode*)** %113, align 8
  %115 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %8, align 8
  %116 = call i32 %114(%struct.xfs_da3_icnode_hdr* %7, %struct.xfs_da_intnode* %115)
  %117 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %118 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load %struct.xfs_da_node_entry* (%struct.xfs_da_intnode*)*, %struct.xfs_da_node_entry* (%struct.xfs_da_intnode*)** %120, align 8
  %122 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %8, align 8
  %123 = call %struct.xfs_da_node_entry* %121(%struct.xfs_da_intnode* %122)
  store %struct.xfs_da_node_entry* %123, %struct.xfs_da_node_entry** %6, align 8
  %124 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %125 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %124, i32 0, i32 0
  %126 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %125, align 8
  %127 = bitcast %struct.xfs_da_intnode* %126 to %struct.xfs_attr_leafblock*
  store %struct.xfs_attr_leafblock* %127, %struct.xfs_attr_leafblock** %3, align 8
  %128 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %129 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %3, align 8
  %132 = bitcast %struct.xfs_attr_leafblock* %131 to %struct.xfs_da_intnode*
  %133 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__* %130, %struct.xfs_attr3_icleaf_hdr* %4, %struct.xfs_da_intnode* %132)
  %134 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %3, align 8
  %135 = bitcast %struct.xfs_attr_leafblock* %134 to %struct.xfs_da_intnode*
  %136 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_da_intnode* %135)
  store %struct.xfs_attr_leaf_entry* %136, %struct.xfs_attr_leaf_entry** %5, align 8
  %137 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %138 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %4, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %137, i64 %141
  %143 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.xfs_da_node_entry*, %struct.xfs_da_node_entry** %6, align 8
  %146 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %145, i64 0
  %147 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @cpu_to_be32(i32 %148)
  %150 = load %struct.xfs_da_node_entry*, %struct.xfs_da_node_entry** %6, align 8
  %151 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %150, i64 0
  %152 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 4
  %153 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, %struct.xfs_da3_icnode_hdr* %7, i32 0, i32 0
  store i32 1, i32* %153, align 4
  %154 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %155 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32 (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)*, i32 (%struct.xfs_da_intnode*, %struct.xfs_da3_icnode_hdr*)** %157, align 8
  %159 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %8, align 8
  %160 = call i32 %158(%struct.xfs_da_intnode* %159, %struct.xfs_da3_icnode_hdr* %7)
  %161 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %162 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %165 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %166 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, 1
  %171 = call i32 @xfs_trans_log_buf(i32 %163, %struct.xfs_buf* %164, i32 0, i64 %170)
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %106, %105, %48, %37, %28
  %173 = load i32, i32* %14, align 4
  ret i32 %173
}

declare dso_local i32 @trace_xfs_attr_leaf_to_node(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_attr3_leaf_read(i32, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_da_get_buf(i32, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @memcpy(%struct.xfs_da_intnode*, %struct.xfs_da_intnode*, i64) #1

declare dso_local i64 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32, i64) #1

declare dso_local i32 @xfs_da3_node_create(%struct.xfs_da_args*, i32, i32, %struct.xfs_buf**, i32) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_da_intnode*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_da_intnode*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
