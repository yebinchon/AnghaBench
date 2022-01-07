; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32* }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_shrink(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca %struct.nilfs_btree_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @nilfs_btree_do_delete(%struct.nilfs_bmap* %15, %struct.nilfs_btree_path* %16, i32 %17, i32* %18, i32* %19)
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %22 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %21)
  store %struct.nilfs_btree_node* %22, %struct.nilfs_btree_node** %11, align 8
  %23 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %23, i32 %24)
  store %struct.nilfs_btree_node* %25, %struct.nilfs_btree_node** %12, align 8
  %26 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %27 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %29 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %30 = call i32 @nilfs_btree_node_delete(%struct.nilfs_btree_node* %28, i32 0, i32* null, i32* null, i32 %29)
  %31 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @nilfs_btree_node_set_level(%struct.nilfs_btree_node* %31, i32 %32)
  %34 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %35 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %37 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @nilfs_btree_node_move_left(%struct.nilfs_btree_node* %36, %struct.nilfs_btree_node* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %42, i64 %44
  %46 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @nilfs_btnode_delete(i32* %47)
  %49 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %49, i64 %51
  %53 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @nilfs_btree_do_delete(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_delete(%struct.nilfs_btree_node*, i32, i32*, i32*, i32) #1

declare dso_local i32 @nilfs_btree_node_set_level(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_move_left(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @nilfs_btnode_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
