; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @posix_acl_xattr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_acl_xattr_get(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.posix_acl*, align 8
  %15 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call i32 @IS_POSIXACL(%struct.inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %57

22:                                               ; preds = %6
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISLNK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %57

31:                                               ; preds = %22
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = load %struct.xattr_handler*, %struct.xattr_handler** %8, align 8
  %34 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.posix_acl* @get_acl(%struct.inode* %32, i32 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %14, align 8
  %37 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %38 = call i64 @IS_ERR(%struct.posix_acl* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %42 = call i32 @PTR_ERR(%struct.posix_acl* %41)
  store i32 %42, i32* %7, align 4
  br label %57

43:                                               ; preds = %31
  %44 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %45 = icmp eq %struct.posix_acl* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @ENODATA, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %57

49:                                               ; preds = %43
  %50 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %50, i8* %51, i64 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %55 = call i32 @posix_acl_release(%struct.posix_acl* %54)
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %49, %46, %40, %28, %19
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
