; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_propagate_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_propagate_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { %struct.buffer_head*, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_btree_node = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head*)* @nilfs_btree_propagate_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_propagate_v(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %16 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %15)
  store %struct.inode* %16, %struct.inode** %12, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %18 = call i32 @get_bh(%struct.buffer_head* %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %20, i64 %22
  %24 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %23, i32 0, i32 0
  store %struct.buffer_head* %19, %struct.buffer_head** %24, align 8
  %25 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %26 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = call i32 @nilfs_btree_prepare_propagate_v(%struct.nilfs_bmap* %25, %struct.nilfs_btree_path* %26, i32 %27, i32* %9, %struct.inode* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %73

33:                                               ; preds = %4
  %34 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %34, i64 %36
  %38 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %37, i32 0, i32 0
  %39 = load %struct.buffer_head*, %struct.buffer_head** %38, align 8
  %40 = call i64 @buffer_nilfs_volatile(%struct.buffer_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %44 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %43, %struct.nilfs_btree_path* %44, i32 %46, i32* %14)
  store %struct.nilfs_btree_node* %47, %struct.nilfs_btree_node** %11, align 8
  %48 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %49 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %49, i64 %52
  %54 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %48, i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.inode*, %struct.inode** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @nilfs_dat_mark_dirty(%struct.inode* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %73

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %33
  %66 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %67 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %12, align 8
  %72 = call i32 @nilfs_btree_commit_propagate_v(%struct.nilfs_bmap* %66, %struct.nilfs_btree_path* %67, i32 %68, i32 %69, %struct.buffer_head* %70, %struct.inode* %71)
  br label %73

73:                                               ; preds = %65, %63, %32
  %74 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %74, i64 %76
  %78 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %77, i32 0, i32 0
  %79 = load %struct.buffer_head*, %struct.buffer_head** %78, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %81, i64 %83
  %85 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %84, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %85, align 8
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_prepare_propagate_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, %struct.inode*) #1

declare dso_local i64 @buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_dat_mark_dirty(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_btree_commit_propagate_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32, %struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
