; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_lock_meta_allocator_move_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_lock_meta_allocator_move_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"reserve metadata_blocks: %d, data_clusters: %u, credits: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context**, i32, i32*)* @ocfs2_lock_meta_allocator_move_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_meta_allocator_move_extents(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context** %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_alloc_context**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = mul nsw i32 2, %19
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %17, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ocfs2_super* @OCFS2_SB(i32 %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %18, align 8
  %27 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %28 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %83

35:                                               ; preds = %7
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %40 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42, %35
  %47 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ocfs2_extend_meta_needed(i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %46, %42, %38
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %59 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %56, i32 %57, %struct.ocfs2_alloc_context** %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %83

65:                                               ; preds = %55
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ocfs2_calc_extend_credits(i32 %68, i32 %71)
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %72
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %65, %62, %31
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %88 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %87, align 8
  %89 = icmp ne %struct.ocfs2_alloc_context* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %92 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %91, align 8
  %93 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %92)
  %94 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %94, align 8
  br label %95

95:                                               ; preds = %90, %86
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32, i32* %15, align 4
  ret i32 %97
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i64 @ocfs2_calc_extend_credits(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
