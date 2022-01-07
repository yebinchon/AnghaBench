; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_lock_allocators.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_lock_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_lock_allocators(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context** %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_alloc_context**, align 8
  %12 = alloca %struct.ocfs2_alloc_context**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %11, align 8
  store %struct.ocfs2_alloc_context** %5, %struct.ocfs2_alloc_context*** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %16, align 8
  %25 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %25, align 8
  %26 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %27 = icmp ne %struct.ocfs2_alloc_context** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %29, align 8
  br label %30

30:                                               ; preds = %28, %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %35 = icmp eq %struct.ocfs2_alloc_context** %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %41 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %99

48:                                               ; preds = %36
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %53 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55, %48
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %61 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %65 = call i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super* %60, i32 %63, %struct.ocfs2_alloc_context** %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ENOSPC, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %76

76:                                               ; preds = %73, %68
  br label %99

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %55, %51
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %99

82:                                               ; preds = %78
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %86 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %83, i32 %84, %struct.ocfs2_alloc_context** %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %99

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %97, %81, %76, %44
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %104 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %103, align 8
  %105 = icmp ne %struct.ocfs2_alloc_context* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %108 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %107, align 8
  %109 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %108)
  %110 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %110, align 8
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
