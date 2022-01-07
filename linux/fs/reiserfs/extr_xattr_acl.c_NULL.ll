; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_acl.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_acl.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @reiserfs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %16 [
    i32 129, label %12
    i32 128, label %14
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %13, i8** %6, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %15, i8** %6, align 8
  br label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %14, %12
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @reiserfs_xattr_get(%struct.inode* %19, i8* %20, i8* null, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %79

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.posix_acl* @ERR_PTR(i32 %36)
  store %struct.posix_acl* %37, %struct.posix_acl** %3, align 8
  br label %79

38:                                               ; preds = %18
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.posix_acl* @ERR_PTR(i32 %46)
  store %struct.posix_acl* %47, %struct.posix_acl** %3, align 8
  br label %79

48:                                               ; preds = %38
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @reiserfs_xattr_get(%struct.inode* %49, i8* %50, i8* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ENODATA, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ENOSYS, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %48
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  br label %75

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.posix_acl* @ERR_PTR(i32 %68)
  store %struct.posix_acl* %69, %struct.posix_acl** %8, align 8
  br label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.posix_acl* @reiserfs_posix_acl_from_disk(i8* %71, i32 %72)
  store %struct.posix_acl* %73, %struct.posix_acl** %8, align 8
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %78, %struct.posix_acl** %3, align 8
  br label %79

79:                                               ; preds = %75, %44, %35, %34
  %80 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %80
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @reiserfs_xattr_get(%struct.inode*, i8*, i8*, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @reiserfs_posix_acl_from_disk(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
