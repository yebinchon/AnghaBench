; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_reserve_blocks_for_rec_trunc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_reserve_blocks_for_rec_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context**, i32)* @ocfs2_reserve_blocks_for_rec_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reserve_blocks_for_rec_trunc(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, %struct.ocfs2_alloc_context** %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_alloc_context**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_alloc_context** %3, %struct.ocfs2_alloc_context*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %14, align 8
  %21 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %9, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %21, align 8
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %23 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %71

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %35 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %30
  %42 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ocfs2_extend_meta_needed(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %41, %37, %33
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %9, align 8
  %57 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %54, i32 %55, %struct.ocfs2_alloc_context** %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %9, align 8
  %76 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %75, align 8
  %77 = icmp ne %struct.ocfs2_alloc_context* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %9, align 8
  %80 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %79, align 8
  %81 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %80)
  %82 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %9, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %82, align 8
  br label %83

83:                                               ; preds = %78, %74
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
