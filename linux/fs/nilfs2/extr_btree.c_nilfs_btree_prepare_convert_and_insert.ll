; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_convert_and_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_convert_and_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%union.nilfs_bmap_ptr_req = type { i64 }
%struct.buffer_head = type { i32 }
%struct.nilfs_bmap_stats = type { i64 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32, %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req*, %struct.buffer_head**, %struct.nilfs_bmap_stats*)* @nilfs_btree_prepare_convert_and_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_prepare_convert_and_insert(%struct.nilfs_bmap* %0, i32 %1, %union.nilfs_bmap_ptr_req* %2, %union.nilfs_bmap_ptr_req* %3, %struct.buffer_head** %4, %struct.nilfs_bmap_stats* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_bmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.nilfs_bmap_ptr_req*, align 8
  %11 = alloca %union.nilfs_bmap_ptr_req*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca %struct.nilfs_bmap_stats*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %8, align 8
  store i32 %1, i32* %9, align 4
  store %union.nilfs_bmap_ptr_req* %2, %union.nilfs_bmap_ptr_req** %10, align 8
  store %union.nilfs_bmap_ptr_req* %3, %union.nilfs_bmap_ptr_req** %11, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %12, align 8
  store %struct.nilfs_bmap_stats* %5, %struct.nilfs_bmap_stats** %13, align 8
  store %struct.inode* null, %struct.inode** %15, align 8
  %17 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %18 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %20 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @nilfs_btree_find_target_v(%struct.nilfs_bmap* %23, i32* null, i32 %24)
  %26 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %10, align 8
  %27 = bitcast %union.nilfs_bmap_ptr_req* %26 to i64*
  store i64 %25, i64* %27, align 8
  %28 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %29 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %28)
  store %struct.inode* %29, %struct.inode** %15, align 8
  br label %30

30:                                               ; preds = %22, %6
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %32 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %10, align 8
  %33 = load %struct.inode*, %struct.inode** %15, align 8
  %34 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %31, %union.nilfs_bmap_ptr_req* %32, %struct.inode* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %7, align 4
  br label %91

39:                                               ; preds = %30
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %40, align 8
  %41 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %42 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %11, align 8
  %46 = icmp ne %union.nilfs_bmap_ptr_req* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %10, align 8
  %49 = bitcast %union.nilfs_bmap_ptr_req* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %11, align 8
  %53 = bitcast %union.nilfs_bmap_ptr_req* %52 to i64*
  store i64 %51, i64* %53, align 8
  %54 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %55 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %11, align 8
  %56 = load %struct.inode*, %struct.inode** %15, align 8
  %57 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %54, %union.nilfs_bmap_ptr_req* %55, %struct.inode* %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %83

61:                                               ; preds = %47
  %62 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %63 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %11, align 8
  %64 = bitcast %union.nilfs_bmap_ptr_req* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @nilfs_btree_get_new_block(%struct.nilfs_bmap* %62, i64 %65, %struct.buffer_head** %14)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %78

70:                                               ; preds = %61
  %71 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %72 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head* %71, %struct.buffer_head** %72, align 8
  %73 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %74 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %70, %39
  store i32 0, i32* %7, align 4
  br label %91

78:                                               ; preds = %69
  %79 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %80 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %11, align 8
  %81 = load %struct.inode*, %struct.inode** %15, align 8
  %82 = call i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap* %79, %union.nilfs_bmap_ptr_req* %80, %struct.inode* %81)
  br label %83

83:                                               ; preds = %78, %60
  %84 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %85 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %10, align 8
  %86 = load %struct.inode*, %struct.inode** %15, align 8
  %87 = call i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap* %84, %union.nilfs_bmap_ptr_req* %85, %struct.inode* %86)
  %88 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %89 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %83, %77, %37
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i64 @nilfs_btree_find_target_v(%struct.nilfs_bmap*, i32*, i32) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_btree_get_new_block(%struct.nilfs_bmap*, i64, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
