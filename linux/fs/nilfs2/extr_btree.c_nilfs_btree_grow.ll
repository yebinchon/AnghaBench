; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_grow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_grow(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
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
  %16 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %15)
  store %struct.nilfs_btree_node* %16, %struct.nilfs_btree_node** %11, align 8
  %17 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path* %17, i32 %18)
  store %struct.nilfs_btree_node* %19, %struct.nilfs_btree_node** %12, align 8
  %20 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %21 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %23 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %25 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node* %24, %struct.nilfs_btree_node* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @nilfs_btree_node_set_level(%struct.nilfs_btree_node* %30, i32 %32)
  %34 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %34, i64 %36
  %38 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @buffer_dirty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %5
  %43 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %43, i64 %45
  %47 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @mark_buffer_dirty(i32* %48)
  br label %50

50:                                               ; preds = %42, %5
  %51 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %51, i64 %53
  %55 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %60, i32 0, i32 2
  store i32* %56, i32** %61, align 8
  %62 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %62, i64 %64
  %66 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %68 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @nilfs_btree_do_insert(%struct.nilfs_bmap* %67, %struct.nilfs_btree_path* %68, i32 %69, i32* %70, i32* %71)
  %73 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %74 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %73, i32 0)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %76, i64 %78
  %80 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  ret void
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @nilfs_btree_node_set_level(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @buffer_dirty(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32*) #1

declare dso_local i32 @nilfs_btree_do_insert(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
