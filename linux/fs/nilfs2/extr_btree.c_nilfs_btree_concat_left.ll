; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_concat_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_concat_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32*, i32* }
%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_concat_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_concat_left(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
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
  %21 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %21, i32 %22)
  store %struct.nilfs_btree_node* %23, %struct.nilfs_btree_node** %11, align 8
  %24 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path* %24, i32 %25)
  store %struct.nilfs_btree_node* %26, %struct.nilfs_btree_node** %12, align 8
  %27 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %28 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %30 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %32 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @nilfs_btree_node_move_left(%struct.nilfs_btree_node* %31, %struct.nilfs_btree_node* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %37, i64 %39
  %41 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @buffer_dirty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %5
  %46 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i64 %48
  %50 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @mark_buffer_dirty(i32* %51)
  br label %53

53:                                               ; preds = %45, %5
  %54 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %54, i64 %56
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @nilfs_btnode_delete(i32* %59)
  %61 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %61, i64 %63
  %65 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %67, i64 %69
  %71 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %70, i32 0, i32 2
  store i32* %66, i32** %71, align 8
  %72 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %72, i64 %74
  %76 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %78 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %77)
  %79 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %79, i64 %81
  %83 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %78
  store i32 %85, i32* %83, align 8
  ret void
}

declare dso_local i32 @nilfs_btree_do_delete(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_move_left(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @buffer_dirty(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32*) #1

declare dso_local i32 @nilfs_btnode_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
