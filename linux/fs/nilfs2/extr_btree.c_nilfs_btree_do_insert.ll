; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_do_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_do_insert(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %15 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %14)
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %5
  %19 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %19, i32 %20)
  store %struct.nilfs_btree_node* %21, %struct.nilfs_btree_node** %11, align 8
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %23 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %25 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %25, i64 %27
  %29 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @nilfs_btree_node_insert(%struct.nilfs_btree_node* %24, i32 %30, i32 %32, i32 %34, i32 %35)
  %37 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %37, i64 %39
  %41 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @buffer_dirty(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %18
  %46 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i64 %48
  %50 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mark_buffer_dirty(i32 %51)
  br label %53

53:                                               ; preds = %45, %18
  %54 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %54, i64 %56
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %63 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %67 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %66, i32 0)
  %68 = call i32 @nilfs_btree_promote_key(%struct.nilfs_bmap* %62, %struct.nilfs_btree_path* %63, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %61, %53
  br label %86

70:                                               ; preds = %5
  %71 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %72 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %71)
  store %struct.nilfs_btree_node* %72, %struct.nilfs_btree_node** %11, align 8
  %73 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %74 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %74, i64 %76
  %78 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %85 = call i32 @nilfs_btree_node_insert(%struct.nilfs_btree_node* %73, i32 %79, i32 %81, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %70, %69
  ret void
}

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_insert(%struct.nilfs_btree_node*, i32, i32, i32, i32) #1

declare dso_local i32 @buffer_dirty(i32) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @nilfs_btree_promote_key(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
