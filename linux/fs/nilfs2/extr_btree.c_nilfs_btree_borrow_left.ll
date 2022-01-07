; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_borrow_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_borrow_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32*, i32* }
%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_borrow_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_borrow_left(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca %struct.nilfs_btree_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %18 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @nilfs_btree_do_delete(%struct.nilfs_bmap* %17, %struct.nilfs_btree_path* %18, i32 %19, i32* %20, i32* %21)
  %23 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %23, i32 %24)
  store %struct.nilfs_btree_node* %25, %struct.nilfs_btree_node** %11, align 8
  %26 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path* %26, i32 %27)
  store %struct.nilfs_btree_node* %28, %struct.nilfs_btree_node** %12, align 8
  %29 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %30 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %32 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %34 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %42 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node* %41, %struct.nilfs_btree_node* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %47, i64 %49
  %51 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @buffer_dirty(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %5
  %56 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %56, i64 %58
  %60 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @mark_buffer_dirty(i32* %61)
  br label %63

63:                                               ; preds = %55, %5
  %64 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %64, i64 %66
  %68 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @buffer_dirty(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %73, i64 %75
  %77 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @mark_buffer_dirty(i32* %78)
  br label %80

80:                                               ; preds = %72, %63
  %81 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %82 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %86 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %85, i32 0)
  %87 = call i32 @nilfs_btree_promote_key(%struct.nilfs_bmap* %81, %struct.nilfs_btree_path* %82, i32 %84, i32 %86)
  %88 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %88, i64 %90
  %92 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @brelse(i32* %93)
  %95 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %95, i64 %97
  %99 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %101, i64 %103
  %105 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %100
  store i32 %107, i32* %105, align 8
  ret void
}

declare dso_local i32 @nilfs_btree_do_delete(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @buffer_dirty(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32*) #1

declare dso_local i32 @nilfs_btree_promote_key(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
