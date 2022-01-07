; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c___ocfs2_reflink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c___ocfs2_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@OI_LS_REFLINK_TARGET = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.buffer_head*, %struct.inode*, i32)* @__ocfs2_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_reflink(%struct.dentry* %0, %struct.buffer_head* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %111

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @filemap_fdatawrite(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %111

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = call i32 @ocfs2_attach_refcount_tree(%struct.inode* %37, %struct.buffer_head* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %111

45:                                               ; preds = %36
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load i32, i32* @I_MUTEX_CHILD, align 4
  %48 = call i32 @inode_lock_nested(%struct.inode* %46, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load i32, i32* @OI_LS_REFLINK_TARGET, align 4
  %51 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %49, %struct.buffer_head** %11, i32 1, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %108

57:                                               ; preds = %45
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ocfs2_create_reflink_node(%struct.inode* %58, %struct.buffer_head* %59, %struct.inode* %60, %struct.buffer_head* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %103

69:                                               ; preds = %57
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ocfs2_reflink_xattrs(%struct.inode* %78, %struct.buffer_head* %79, %struct.inode* %80, %struct.buffer_head* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %103

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ocfs2_complete_reflink(%struct.inode* %91, %struct.buffer_head* %92, %struct.inode* %93, %struct.buffer_head* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %102

102:                                              ; preds = %99, %90
  br label %103

103:                                              ; preds = %102, %86, %66
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = call i32 @ocfs2_inode_unlock(%struct.inode* %104, i32 1)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  br label %108

108:                                              ; preds = %103, %54
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = call i32 @inode_unlock(%struct.inode* %109)
  br label %111

111:                                              ; preds = %108, %42, %33, %21
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %111
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @filemap_fdatawait(i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124, %111
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @filemap_fdatawrite(i32) #1

declare dso_local i32 @ocfs2_attach_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @ocfs2_create_reflink_node(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_reflink_xattrs(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_complete_reflink(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
