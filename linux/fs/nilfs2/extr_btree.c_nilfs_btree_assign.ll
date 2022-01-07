; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i64 }
%union.nilfs_binfo = type { i32 }
%struct.nilfs_btree_path = type { i32 }
%struct.nilfs_btree_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_DATA = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.buffer_head**, i32, %union.nilfs_binfo*)* @nilfs_btree_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_assign(%struct.nilfs_bmap* %0, %struct.buffer_head** %1, i32 %2, %union.nilfs_binfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.nilfs_binfo*, align 8
  %10 = alloca %struct.nilfs_btree_path*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.nilfs_binfo* %3, %union.nilfs_binfo** %9, align 8
  %15 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %15, %struct.nilfs_btree_path** %10, align 8
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %17 = icmp eq %struct.nilfs_btree_path* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %84

21:                                               ; preds = %4
  %22 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %24 = call i64 @buffer_nilfs_node(%struct.buffer_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %31, %struct.nilfs_btree_node** %11, align 8
  %32 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %33 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %32, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %35 = call i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node* %34)
  store i32 %35, i32* %13, align 4
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %38 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %38, align 8
  %40 = call i32 @nilfs_bmap_data_get_key(%struct.nilfs_bmap* %37, %struct.buffer_head* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @NILFS_BTREE_LEVEL_DATA, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %36, %26
  %43 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %44 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %43, %struct.nilfs_btree_path* %44, i32 %45, i32* null, i32 %47, i32 0)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  br label %80

58:                                               ; preds = %42
  %59 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %60 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %64 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %union.nilfs_binfo*, %union.nilfs_binfo** %9, align 8
  %69 = call i32 @nilfs_btree_assign_v(%struct.nilfs_bmap* %63, %struct.nilfs_btree_path* %64, i32 %65, %struct.buffer_head** %66, i32 %67, %union.nilfs_binfo* %68)
  br label %78

70:                                               ; preds = %58
  %71 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %72 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %union.nilfs_binfo*, %union.nilfs_binfo** %9, align 8
  %77 = call i32 @nilfs_btree_assign_p(%struct.nilfs_bmap* %71, %struct.nilfs_btree_path* %72, i32 %73, %struct.buffer_head** %74, i32 %75, %union.nilfs_binfo* %76)
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i32 [ %69, %62 ], [ %77, %70 ]
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %51
  %81 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %82 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %18
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i64 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_bmap_data_get_key(%struct.nilfs_bmap*, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_assign_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head**, i32, %union.nilfs_binfo*) #1

declare dso_local i32 @nilfs_btree_assign_p(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head**, i32, %union.nilfs_binfo*) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
