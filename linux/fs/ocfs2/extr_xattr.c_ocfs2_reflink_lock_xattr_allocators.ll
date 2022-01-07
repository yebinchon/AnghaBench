; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_lock_xattr_allocators.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_lock_xattr_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_xattr_header = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ocfs2_get_xattr_value_root = common dso_local global i32 0, align 4
@OCFS2_EXPAND_REFCOUNT_TREE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_xattr_header*, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context**)* @ocfs2_reflink_lock_xattr_allocators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_lock_xattr_allocators(%struct.ocfs2_super* %0, %struct.ocfs2_xattr_header* %1, %struct.buffer_head* %2, i32* %3, %struct.ocfs2_alloc_context** %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_xattr_header*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_alloc_context**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_xattr_header* %1, %struct.ocfs2_xattr_header** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %18, %struct.ocfs2_refcount_block** %14, align 8
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %7, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @ocfs2_get_xattr_value_root, align 4
  %26 = call i32 @ocfs2_value_metas_in_xattr_header(i32 %22, i32* null, %struct.ocfs2_xattr_header* %23, i32* %12, i32* %24, i32* %13, i32 %25, i32* null)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %89

32:                                               ; preds = %5
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ocfs2_refcount_recs_per_rb(i32 %36)
  %38 = sdiv i32 %33, %37
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @OCFS2_EXPAND_REFCOUNT_TREE_CREDITS, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %47
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %52 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %32
  %59 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %60 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = mul nsw i32 %63, %68
  %70 = add nsw i32 %69, 1
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %78

74:                                               ; preds = %32
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %74, %58
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %82 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %79, i32 %80, %struct.ocfs2_alloc_context** %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local i32 @ocfs2_value_metas_in_xattr_header(i32, i32*, %struct.ocfs2_xattr_header*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_recs_per_rb(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
