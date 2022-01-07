; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.posix_acl = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i32, %struct.posix_acl*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*)* @ocfs2_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_set_acl(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, %struct.posix_acl* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.posix_acl*, align 8
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.posix_acl* %4, %struct.posix_acl** %13, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISLNK(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %89

28:                                               ; preds = %7
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %49 [
    i32 129, label %30
    i32 128, label %32
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %31, i32* %16, align 4
  br label %52

32:                                               ; preds = %28
  %33 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %33, i32* %16, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISDIR(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %41 = icmp ne %struct.posix_acl* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EACCES, align 4
  %44 = sub nsw i32 0, %43
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %8, align 4
  br label %89

48:                                               ; preds = %32
  br label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %89

52:                                               ; preds = %48, %30
  %53 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %54 = icmp ne %struct.posix_acl* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %57 = call i8* @ocfs2_acl_to_xattr(%struct.posix_acl* %56, i64* %18)
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %17, align 8
  %63 = call i64 @PTR_ERR(i8* %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  br label %89

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %77 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %78 = call i32 @ocfs2_xattr_set_handle(i32* %70, %struct.inode* %71, %struct.buffer_head* %72, i32 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %74, i64 %75, i32 0, %struct.ocfs2_alloc_context* %76, %struct.ocfs2_alloc_context* %77)
  store i32 %78, i32* %19, align 4
  br label %85

79:                                               ; preds = %66
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = load i64, i64* %18, align 8
  %84 = call i32 @ocfs2_xattr_set(%struct.inode* %80, i32 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %82, i64 %83, i32 0)
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %79, %69
  %86 = load i8*, i8** %17, align 8
  %87 = call i32 @kfree(i8* %86)
  %88 = load i32, i32* %19, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %61, %49, %46, %25
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @ocfs2_acl_to_xattr(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @ocfs2_xattr_set_handle(i32*, %struct.inode*, %struct.buffer_head*, i32, i8*, i8*, i64, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_xattr_set(%struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
