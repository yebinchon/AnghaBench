; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_create_empty_xattr_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_create_empty_xattr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32 }

@OCFS2_XATTR_BLOCK_CREATE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.buffer_head**, i32)* @ocfs2_create_empty_xattr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_empty_xattr_block(%struct.inode* %0, %struct.buffer_head* %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.ocfs2_xattr_set_ctxt, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %11, align 8
  %17 = call i32 @memset(%struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 8)
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 0
  %20 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %18, i32 1, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %68

27:                                               ; preds = %4
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %29 = load i32, i32* @OCFS2_XATTR_BLOCK_CREATE_CREDITS, align 4
  %30 = call i32 @ocfs2_start_trans(%struct.ocfs2_super* %28, i32 %29)
  %31 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %63

42:                                               ; preds = %27
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @trace_ocfs2_create_empty_xattr_block(i64 %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %52 = call i32 @ocfs2_create_xattr_block(%struct.inode* %48, %struct.buffer_head* %49, %struct.ocfs2_xattr_set_ctxt* %12, i32 %50, %struct.buffer_head** %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %36
  %64 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ocfs2_free_alloc_context(i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %23
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_xattr_set_ctxt*, i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @trace_ocfs2_create_empty_xattr_block(i64, i32) #1

declare dso_local i32 @ocfs2_create_xattr_block(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_set_ctxt*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
