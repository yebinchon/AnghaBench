; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_acl.c_orangefs_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_acl.c_orangefs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"orangefs_get_acl: bogus value of type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ORANGEFS_MAX_XATTR_VALUELEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GOSSIP_ACL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"inode %pU, key %s, type %d\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"inode %pU retrieving acl's failed with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @orangefs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %2
  %12 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %12, i8** %8, align 8
  br label %21

13:                                               ; preds = %2
  %14 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %14, i8** %8, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, i32, ...) @gossip_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.posix_acl* @ERR_PTR(i32 %19)
  store %struct.posix_acl* %20, %struct.posix_acl** %3, align 8
  br label %72

21:                                               ; preds = %13, %11
  %22 = load i32, i32* @ORANGEFS_MAX_XATTR_VALUELEN, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.posix_acl* @ERR_PTR(i32 %29)
  store %struct.posix_acl* %30, %struct.posix_acl** %3, align 8
  br label %72

31:                                               ; preds = %21
  %32 = load i32, i32* @GOSSIP_ACL_DEBUG, align 4
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @get_khandle_from_ino(%struct.inode* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @gossip_debug(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35, i32 %36)
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @ORANGEFS_MAX_XATTR_VALUELEN, align 4
  %42 = call i32 @orangefs_inode_getxattr(%struct.inode* %38, i8* %39, i8* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.posix_acl* @posix_acl_from_xattr(i32* @init_user_ns, i8* %46, i32 %47)
  store %struct.posix_acl* %48, %struct.posix_acl** %6, align 8
  br label %68

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ENODATA, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ENOSYS, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  store %struct.posix_acl* null, %struct.posix_acl** %6, align 8
  br label %67

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @get_khandle_from_ino(%struct.inode* %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, i32, ...) @gossip_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.posix_acl* @ERR_PTR(i32 %65)
  store %struct.posix_acl* %66, %struct.posix_acl** %6, align 8
  br label %67

67:                                               ; preds = %60, %59
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %71, %struct.posix_acl** %3, align 8
  br label %72

72:                                               ; preds = %68, %27, %15
  %73 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %73
}

declare dso_local i32 @gossip_err(i8*, i32, ...) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @get_khandle_from_ino(%struct.inode*) #1

declare dso_local i32 @orangefs_inode_getxattr(%struct.inode*, i8*, i8*, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
