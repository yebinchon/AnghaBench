; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_prep_new_orphaned_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_prep_new_orphaned_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i8*, %struct.inode**, i32*, %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_alloc_context**)* @ocfs2_prep_new_orphaned_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prep_new_orphaned_file(%struct.inode* %0, %struct.buffer_head* %1, i8* %2, %struct.inode** %3, i32* %4, %struct.ocfs2_dir_lookup_result* %5, %struct.ocfs2_alloc_context** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.inode**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %15 = alloca %struct.ocfs2_alloc_context**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.inode** %3, %struct.inode*** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.ocfs2_dir_lookup_result* %5, %struct.ocfs2_dir_lookup_result** %14, align 8
  store %struct.ocfs2_alloc_context** %6, %struct.ocfs2_alloc_context*** %15, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %18, align 8
  store %struct.inode* null, %struct.inode** %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %21, align 8
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %27 = call i32 @ocfs2_lookup_lock_orphan_dir(%struct.ocfs2_super* %26, %struct.inode** %19, %struct.buffer_head** %20)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %8, align 4
  br label %98

34:                                               ; preds = %7
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %36 = call i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %35, %struct.ocfs2_alloc_context** %21)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  br label %71

48:                                               ; preds = %34
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %52 = call i32 @ocfs2_find_new_inode_loc(%struct.inode* %49, %struct.buffer_head* %50, %struct.ocfs2_alloc_context* %51, i32* %17)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %71

58:                                               ; preds = %48
  %59 = load %struct.inode*, %struct.inode** %19, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %14, align 8
  %64 = call i32 @__ocfs2_prepare_orphan_dir(%struct.inode* %59, %struct.buffer_head* %60, i32 %61, i8* %62, %struct.ocfs2_dir_lookup_result* %63, i32 0)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %67, %55, %47
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.inode*, %struct.inode** %19, align 8
  %76 = load %struct.inode**, %struct.inode*** %12, align 8
  store %struct.inode* %75, %struct.inode** %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %80 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %15, align 8
  store %struct.ocfs2_alloc_context* %79, %struct.ocfs2_alloc_context** %80, align 8
  br label %94

81:                                               ; preds = %71
  %82 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %83 = icmp ne %struct.ocfs2_alloc_context* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %86 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.inode*, %struct.inode** %19, align 8
  %89 = call i32 @inode_unlock(%struct.inode* %88)
  %90 = load %struct.inode*, %struct.inode** %19, align 8
  %91 = call i32 @ocfs2_inode_unlock(%struct.inode* %90, i32 1)
  %92 = load %struct.inode*, %struct.inode** %19, align 8
  %93 = call i32 @iput(%struct.inode* %92)
  br label %94

94:                                               ; preds = %87, %74
  %95 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %96 = call i32 @brelse(%struct.buffer_head* %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %94, %30
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_lookup_lock_orphan_dir(%struct.ocfs2_super*, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_find_new_inode_loc(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i32 @__ocfs2_prepare_orphan_dir(%struct.inode*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_dir_lookup_result*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
