; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_try_remove_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_try_remove_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32, i32, i32, i64 }
%struct.ocfs2_dinode = type { i64 }

@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_try_remove_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %8)
  store %struct.ocfs2_inode_info* %9, %struct.ocfs2_inode_info** %6, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %13, %struct.ocfs2_dinode** %7, align 8
  %14 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %14, i32 0, i32 1
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %18 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %17, i32 0, i32 2
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %21 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %61

38:                                               ; preds = %32, %25
  %39 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %48 = call i64 @ocfs2_has_inline_xattr_value_outside(%struct.inode* %46, %struct.ocfs2_dinode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %61

51:                                               ; preds = %45, %38
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %54 = call i32 @ocfs2_remove_refcount_tree(%struct.inode* %52, %struct.buffer_head* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %50, %37, %24
  %62 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %63 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %62, i32 0, i32 2
  %64 = call i32 @up_write(i32* %63)
  %65 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %66 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %65, i32 0, i32 1
  %67 = call i32 @up_write(i32* %66)
  ret i32 0
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ocfs2_has_inline_xattr_value_outside(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
