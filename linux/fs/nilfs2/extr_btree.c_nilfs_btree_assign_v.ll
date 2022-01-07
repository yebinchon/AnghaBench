; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }
%struct.buffer_head = type { i32 }
%union.nilfs_binfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.nilfs_btree_node = type { i32 }
%struct.inode = type { i32 }
%union.nilfs_bmap_ptr_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head**, i32, %union.nilfs_binfo*)* @nilfs_btree_assign_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_assign_v(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.buffer_head** %3, i32 %4, %union.nilfs_binfo* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_bmap*, align 8
  %9 = alloca %struct.nilfs_btree_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.nilfs_binfo*, align 8
  %14 = alloca %struct.nilfs_btree_node*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.nilfs_bmap_ptr_req, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %8, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.nilfs_binfo* %5, %union.nilfs_binfo** %13, align 8
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %22 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %21)
  store %struct.inode* %22, %struct.inode** %15, align 8
  %23 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %24 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  %27 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %23, %struct.nilfs_btree_path* %24, i32 %26, i32* %19)
  store %struct.nilfs_btree_node* %27, %struct.nilfs_btree_node** %14, align 8
  %28 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %29 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %29, i64 %32
  %34 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %19, align 4
  %37 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %28, i32 %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = bitcast %union.nilfs_bmap_ptr_req* %18 to i32*
  store i32 %38, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = bitcast %union.nilfs_bmap_ptr_req* %18 to i32*
  %42 = call i32 @nilfs_dat_prepare_start(%struct.inode* %40, i32* %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %7, align 4
  br label %71

47:                                               ; preds = %6
  %48 = load %struct.inode*, %struct.inode** %15, align 8
  %49 = bitcast %union.nilfs_bmap_ptr_req* %18 to i32*
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @nilfs_dat_commit_start(%struct.inode* %48, i32* %49, i32 %50)
  %52 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %53 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %53, i64 %56
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %52, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = load %union.nilfs_binfo*, %union.nilfs_binfo** %13, align 8
  %64 = bitcast %union.nilfs_binfo* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i8* @cpu_to_le64(i32 %66)
  %68 = load %union.nilfs_binfo*, %union.nilfs_binfo** %13, align 8
  %69 = bitcast %union.nilfs_binfo* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %47, %45
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_dat_prepare_start(%struct.inode*, i32*) #1

declare dso_local i32 @nilfs_dat_commit_start(%struct.inode*, i32*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
