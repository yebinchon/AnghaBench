; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_get_acl_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_get_acl_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32, %struct.buffer_head*)* @ocfs2_get_acl_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @ocfs2_get_acl_nolock(%struct.inode* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %17 [
    i32 129, label %13
    i32 128, label %15
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %14, i32* %8, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %16, i32* %8, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.posix_acl* @ERR_PTR(i32 %19)
  store %struct.posix_acl* %20, %struct.posix_acl** %4, align 8
  br label %69

21:                                               ; preds = %15, %13
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %22, %struct.buffer_head* %23, i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* null, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.posix_acl* @ERR_PTR(i32 %36)
  store %struct.posix_acl* %37, %struct.posix_acl** %4, align 8
  br label %69

38:                                               ; preds = %28
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %39, %struct.buffer_head* %40, i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %21
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call %struct.posix_acl* @ocfs2_acl_from_xattr(i8* %49, i32 %50)
  store %struct.posix_acl* %51, %struct.posix_acl** %10, align 8
  br label %65

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %52
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  br label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.posix_acl* @ERR_PTR(i32 %62)
  store %struct.posix_acl* %63, %struct.posix_acl** %10, align 8
  br label %64

64:                                               ; preds = %61, %60
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  store %struct.posix_acl* %68, %struct.posix_acl** %4, align 8
  br label %69

69:                                               ; preds = %65, %34, %17
  %70 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  ret %struct.posix_acl* %70
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @ocfs2_xattr_get_nolock(%struct.inode*, %struct.buffer_head*, i32, i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ocfs2_acl_from_xattr(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
