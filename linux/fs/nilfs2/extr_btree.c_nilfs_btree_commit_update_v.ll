; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_commit_update_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_commit_update_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i64 }
%struct.nilfs_btree_path = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_btree_node = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NILFS_BMAP_PTR_VS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*)* @nilfs_btree_commit_update_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_commit_update_v(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_btree_node*, align 8
  %10 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* %3, %struct.inode** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %8, align 8
  %12 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %12, i64 %14
  %16 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %18, i64 %20
  %22 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NILFS_BMAP_PTR_VS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @nilfs_dat_commit_update(%struct.inode* %11, i32* %17, i32* %23, i32 %29)
  %31 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %31, i64 %33
  %35 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @buffer_nilfs_node(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %4
  %40 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %41 = call %struct.TYPE_8__* @NILFS_BMAP_I(%struct.nilfs_bmap* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %43, i64 %45
  %47 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i32 0, i32 3
  %48 = call i32 @nilfs_btnode_commit_change_key(i32* %42, %struct.TYPE_7__* %47)
  %49 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %49, i64 %51
  %53 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %56, i64 %58
  %60 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %39, %4
  %62 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %62, i64 %64
  %66 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_buffer_nilfs_volatile(i32 %67)
  %69 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %70 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %69, %struct.nilfs_btree_path* %70, i32 %72, i32* %10)
  store %struct.nilfs_btree_node* %73, %struct.nilfs_btree_node** %9, align 8
  %74 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %9, align 8
  %75 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %75, i64 %78
  %80 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %82, i64 %84
  %86 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @nilfs_btree_node_set_ptr(%struct.nilfs_btree_node* %74, i32 %81, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @nilfs_dat_commit_update(%struct.inode*, i32*, i32*, i32) #1

declare dso_local i64 @buffer_nilfs_node(i32) #1

declare dso_local i32 @nilfs_btnode_commit_change_key(i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

declare dso_local i32 @set_buffer_nilfs_volatile(i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_set_ptr(%struct.nilfs_btree_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
