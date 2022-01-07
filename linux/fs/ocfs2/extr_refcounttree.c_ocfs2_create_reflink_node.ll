; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_create_reflink_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_create_reflink_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32)* @ocfs2_create_reflink_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_reflink_node(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %14, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %15, align 8
  %25 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %13)
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = call i32 @ocfs2_set_refcount_tree(%struct.inode* %26, %struct.buffer_head* %27, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %90

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = call i32 @ocfs2_duplicate_inline_data(%struct.inode* %47, %struct.buffer_head* %48, %struct.inode* %49, %struct.buffer_head* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %57

57:                                               ; preds = %54, %46
  br label %90

58:                                               ; preds = %38
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le64_to_cpu(i32 %62)
  %64 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %59, i32 %63, i32 1, %struct.ocfs2_refcount_tree** %16, %struct.buffer_head** %12)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %90

70:                                               ; preds = %58
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %75 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %74, i32 0, i32 0
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = call i32 @ocfs2_duplicate_extent_list(%struct.inode* %71, %struct.inode* %72, %struct.buffer_head* %73, i32* %75, %struct.buffer_head* %76, %struct.ocfs2_cached_dealloc_ctxt* %13)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %84

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %80
  %85 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %86 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %87 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %85, %struct.ocfs2_refcount_tree* %86, i32 1)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %84, %67, %57, %35
  %91 = call i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt* %13)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %95 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %94, i32 1)
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %97 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %96, %struct.ocfs2_cached_dealloc_ctxt* %13)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_set_refcount_tree(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_duplicate_inline_data(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_duplicate_extent_list(%struct.inode*, %struct.inode*, %struct.buffer_head*, i32*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
