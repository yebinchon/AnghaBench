; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_acl.c___ext4_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_acl.c___ext4_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EXT4_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, %struct.posix_acl*, i32)* @__ext4_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_set_acl(i32* %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.posix_acl* %3, %struct.posix_acl** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %36 [
    i32 129, label %17
    i32 128, label %19
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %18, i32* %12, align 4
  br label %39

19:                                               ; preds = %5
  %20 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISDIR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %28 = icmp ne %struct.posix_acl* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  store i32 %34, i32* %6, align 4
  br label %72

35:                                               ; preds = %19
  br label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %72

39:                                               ; preds = %35, %17
  %40 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %41 = icmp ne %struct.posix_acl* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %44 = call i8* @ext4_acl_to_disk(%struct.posix_acl* %43, i64* %14)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %13, align 8
  %50 = call i64 @PTR_ERR(i8* %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %72

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ext4_xattr_set_handle(i32* %54, %struct.inode* %55, i32 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %57, i64 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %69 = call i32 @set_cached_acl(%struct.inode* %66, i32 %67, %struct.posix_acl* %68)
  br label %70

70:                                               ; preds = %65, %53
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %48, %36, %33
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @ext4_acl_to_disk(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @ext4_xattr_set_handle(i32*, %struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
