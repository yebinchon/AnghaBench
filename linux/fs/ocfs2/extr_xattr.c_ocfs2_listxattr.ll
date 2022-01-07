; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @d_inode(%struct.dentry* %14)
  %16 = call %struct.ocfs2_inode_info* @OCFS2_I(i32 %15)
  store %struct.ocfs2_inode_info* %16, %struct.ocfs2_inode_info** %13, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @OCFS2_SB(i32 %19)
  %21 = call i32 @ocfs2_supports_xattr(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %97

26:                                               ; preds = %3
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %97

35:                                               ; preds = %26
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @d_inode(%struct.dentry* %36)
  %38 = call i32 @ocfs2_inode_lock(i32 %37, %struct.buffer_head** %11, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %97

45:                                               ; preds = %35
  %46 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %49, %struct.ocfs2_dinode** %12, align 8
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 1
  %52 = call i32 @down_read(i32* %51)
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = call i32 @d_inode(%struct.dentry* %53)
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @ocfs2_xattr_ibody_list(i32 %54, %struct.ocfs2_dinode* %55, i8* %56, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %85

62:                                               ; preds = %45
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %65, %62
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call i32 @d_inode(%struct.dentry* %75)
  %77 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ocfs2_xattr_block_list(i32 %76, %struct.ocfs2_dinode* %77, i8* %78, i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %74
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %87 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %86, i32 0, i32 1
  %88 = call i32 @up_read(i32* %87)
  %89 = load %struct.dentry*, %struct.dentry** %5, align 8
  %90 = call i32 @d_inode(%struct.dentry* %89)
  %91 = call i32 @ocfs2_inode_unlock(i32 %90, i32 0)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %85, %41, %33, %23
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_inode_lock(i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_xattr_ibody_list(i32, %struct.ocfs2_dinode*, i8*, i64) #1

declare dso_local i32 @ocfs2_xattr_block_list(i32, %struct.ocfs2_dinode*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
