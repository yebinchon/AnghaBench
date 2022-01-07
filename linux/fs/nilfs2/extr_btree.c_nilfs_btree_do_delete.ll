; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_do_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_do_delete(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
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
  br i1 %17, label %18, label %68

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
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @nilfs_btree_node_delete(%struct.nilfs_btree_node* %24, i32 %30, i32* %31, i32* %32, i32 %33)
  %35 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %35, i64 %37
  %39 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @buffer_dirty(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %18
  %44 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %44, i64 %46
  %48 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mark_buffer_dirty(i32 %49)
  br label %51

51:                                               ; preds = %43, %18
  %52 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %52, i64 %54
  %56 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %61 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %65 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %64, i32 0)
  %66 = call i32 @nilfs_btree_promote_key(%struct.nilfs_bmap* %60, %struct.nilfs_btree_path* %61, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %59, %51
  br label %82

68:                                               ; preds = %5
  %69 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %70 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %69)
  store %struct.nilfs_btree_node* %70, %struct.nilfs_btree_node** %11, align 8
  %71 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %72 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %72, i64 %74
  %76 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %81 = call i32 @nilfs_btree_node_delete(%struct.nilfs_btree_node* %71, i32 %77, i32* %78, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %67
  ret void
}

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_delete(%struct.nilfs_btree_node*, i32, i32*, i32*, i32) #1

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
