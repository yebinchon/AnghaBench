; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_refcount_tree = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_decrease_refcount(%struct.inode* %0, i32* %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_cached_dealloc_ctxt* %5, i32 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %12, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  store i32 %6, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call i32 @ocfs2_get_refcount_block(%struct.inode* %25, i32* %16)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %73

32:                                               ; preds = %7
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @OCFS2_SB(i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @ocfs2_get_refcount_tree(i32 %36, i32 %37, %struct.ocfs2_refcount_tree** %18)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %73

44:                                               ; preds = %32
  %45 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %46 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %45, i32 0, i32 0
  %47 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %48 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ocfs2_read_refcount_block(i32* %46, i32 %49, %struct.buffer_head** %17)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %73

56:                                               ; preds = %44
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %59 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %58, i32 0, i32 0
  %60 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %64 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @__ocfs2_decrease_refcount(i32* %57, i32* %59, %struct.buffer_head* %60, i32 %61, i32 %62, %struct.ocfs2_alloc_context* %63, %struct.ocfs2_cached_dealloc_ctxt* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %72

72:                                               ; preds = %69, %56
  br label %73

73:                                               ; preds = %72, %53, %41, %29
  %74 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_get_refcount_block(%struct.inode*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_refcount_tree(i32, i32, %struct.ocfs2_refcount_tree**) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @__ocfs2_decrease_refcount(i32*, i32*, %struct.buffer_head*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
