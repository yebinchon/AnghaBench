; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_prepare_refcount_change_for_del.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_prepare_refcount_change_for_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"Inode %lu want to use refcount tree, but the feature bit is not set in the super block\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_refcount_tree*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ocfs2_blocks_to_clusters(i32 %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @OCFS2_SB(i32 %24)
  %26 = call i32 @ocfs2_refcount_tree(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %6
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ocfs2_error(i32 %31, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %13, align 4
  br label %87

36:                                               ; preds = %6
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OCFS2_SB(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ocfs2_get_refcount_tree(i32 %46, i32 %47, %struct.ocfs2_refcount_tree** %15)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %87

54:                                               ; preds = %36
  %55 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %15, align 8
  %56 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ocfs2_read_refcount_block(i32* %56, i32 %57, %struct.buffer_head** %14)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %87

64:                                               ; preds = %54
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %15, align 8
  %69 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %68, i32 0, i32 0
  %70 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @ocfs2_calc_refcount_meta_credits(i32 %67, i32* %69, %struct.buffer_head* %70, i32 %71, i32 %72, i32* %73, i32* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %87

81:                                               ; preds = %64
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @trace_ocfs2_prepare_refcount_change_for_del(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %81, %78, %61, %51, %28
  %88 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_refcount_tree(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_get_refcount_tree(i32, i32, %struct.ocfs2_refcount_tree**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_calc_refcount_meta_credits(i32, i32*, %struct.buffer_head*, i32, i32, i32*, i32*) #1

declare dso_local i32 @trace_ocfs2_prepare_refcount_change_for_del(i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
