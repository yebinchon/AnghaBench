; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_find_new_inode_loc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_find_new_inode_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i64, i32, i64, i32, %struct.ocfs2_suballoc_result* }
%struct.ocfs2_suballoc_result = type { i32 }

@OCFS2_AC_USE_INODE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_new_inode_loc(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_alloc_context* %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_suballoc_result*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %13 = icmp ne %struct.ocfs2_alloc_context* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OCFS2_AC_USE_INODE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = call %struct.ocfs2_suballoc_result* @kzalloc(i32 4, i32 %36)
  store %struct.ocfs2_suballoc_result* %37, %struct.ocfs2_suballoc_result** %11, align 8
  %38 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %39 = icmp eq %struct.ocfs2_suballoc_result* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %87

45:                                               ; preds = %4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %48 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %49 = call i32 @ocfs2_init_inode_ac_group(%struct.inode* %46, %struct.buffer_head* %47, %struct.ocfs2_alloc_context* %48)
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OCFS2_SB(i32 %52)
  %54 = load i32, i32* @OCFS2_SUBALLOC_ALLOC, align 4
  %55 = call i32* @ocfs2_start_trans(i32 %53, i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @PTR_ERR(i32* %60)
  store i32 %61, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %87

64:                                               ; preds = %45
  %65 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %66 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %65, i32 0, i32 3
  store i32 1, i32* %66, align 8
  %67 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %70 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context* %67, i32* %68, i32 1, i32 1, %struct.ocfs2_suballoc_result* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %87

76:                                               ; preds = %64
  %77 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %78 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %79 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %78, i32 0, i32 4
  store %struct.ocfs2_suballoc_result* %77, %struct.ocfs2_suballoc_result** %79, align 8
  %80 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %81 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = call i32 @ocfs2_update_inode_fsync_trans(i32* %84, %struct.inode* %85, i32 0)
  br label %87

87:                                               ; preds = %76, %73, %59, %40
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @OCFS2_SB(i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @ocfs2_commit_trans(i32 %94, i32* %95)
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %102 = call i32 @kfree(%struct.ocfs2_suballoc_result* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_suballoc_result* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_inode_ac_group(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context*, i32*, i32, i32, %struct.ocfs2_suballoc_result*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_suballoc_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
