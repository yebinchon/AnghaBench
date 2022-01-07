; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_order.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)* }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir2_leaf = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32 }
%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leafn_order(%struct.xfs_inode* %0, %struct.xfs_buf* %1, %struct.xfs_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.xfs_dir2_leaf*, align 8
  %9 = alloca %struct.xfs_dir2_leaf*, align 8
  %10 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %13 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 0
  %16 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %15, align 8
  store %struct.xfs_dir2_leaf* %16, %struct.xfs_dir2_leaf** %8, align 8
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 0
  %19 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %18, align 8
  store %struct.xfs_dir2_leaf* %19, %struct.xfs_dir2_leaf** %9, align 8
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)** %23, align 8
  %25 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %8, align 8
  %26 = call i32 %24(%struct.xfs_dir3_icleaf_hdr* %12, %struct.xfs_dir2_leaf* %25)
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)** %30, align 8
  %32 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %9, align 8
  %33 = call i32 %31(%struct.xfs_dir3_icleaf_hdr* %13, %struct.xfs_dir2_leaf* %32)
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)** %37, align 8
  %39 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %8, align 8
  %40 = call %struct.xfs_dir2_leaf_entry* %38(%struct.xfs_dir2_leaf* %39)
  store %struct.xfs_dir2_leaf_entry* %40, %struct.xfs_dir2_leaf_entry** %10, align 8
  %41 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)** %44, align 8
  %46 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %9, align 8
  %47 = call %struct.xfs_dir2_leaf_entry* %45(%struct.xfs_dir2_leaf* %46)
  store %struct.xfs_dir2_leaf_entry* %47, %struct.xfs_dir2_leaf_entry** %11, align 8
  %48 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %57 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %56, i64 0
  %58 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  %61 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %62 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %61, i64 0
  %63 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be32_to_cpu(i32 %64)
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %87, label %67

67:                                               ; preds = %55
  %68 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %69 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %13, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %68, i64 %72
  %74 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @be32_to_cpu(i32 %75)
  %77 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %78 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %77, i64 %81
  %83 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @be32_to_cpu(i32 %84)
  %86 = icmp slt i64 %76, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %67, %55
  store i32 1, i32* %4, align 4
  br label %89

88:                                               ; preds = %67, %51, %3
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
