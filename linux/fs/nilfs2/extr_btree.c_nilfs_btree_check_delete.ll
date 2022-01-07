; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_check_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_check_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@NILFS_BMAP_LARGE_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64)* @nilfs_btree_check_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_check_delete(%struct.nilfs_bmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_btree_node*, align 8
  %8 = alloca %struct.nilfs_btree_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %15 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %14)
  store %struct.nilfs_btree_node* %15, %struct.nilfs_btree_node** %7, align 8
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %17 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %16)
  switch i32 %17, label %44 [
    i32 2, label %18
    i32 3, label %20
  ]

18:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %19 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  store %struct.nilfs_btree_node* %19, %struct.nilfs_btree_node** %8, align 8
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %22 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %78

26:                                               ; preds = %20
  %27 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %31 = call i64 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %27, i32 %29, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %32, i64 %33, %struct.buffer_head** %6)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %26
  %40 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %43, %struct.nilfs_btree_node** %8, align 8
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

45:                                               ; preds = %39, %18
  %46 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %47 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %48, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 2
  %58 = call i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %55, i32 %57)
  br label %60

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i64 [ %58, %54 ], [ 0, %59 ]
  store i64 %61, i64* %10, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %63 = icmp ne %struct.buffer_head* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %66 = call i32 @brelse(%struct.buffer_head* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @NILFS_BMAP_LARGE_LOW, align 8
  %74 = icmp slt i64 %72, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %44, %37, %25
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i64 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_btree_get_block(%struct.nilfs_bmap*, i64, %struct.buffer_head**) #1

declare dso_local i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
