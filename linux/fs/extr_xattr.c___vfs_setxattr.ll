; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.xattr_handler = type { i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64, i32)* }
%struct.dentry.0 = type opaque
%struct.inode.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vfs_setxattr(%struct.dentry* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xattr_handler*, align 8
  store %struct.dentry* %0, %struct.dentry** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call %struct.xattr_handler* @xattr_resolve_name(%struct.inode* %15, i8** %10)
  store %struct.xattr_handler* %16, %struct.xattr_handler** %14, align 8
  %17 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %18 = call i64 @IS_ERR(%struct.xattr_handler* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %22 = call i32 @PTR_ERR(%struct.xattr_handler* %21)
  store i32 %22, i32* %7, align 4
  br label %49

23:                                               ; preds = %6
  %24 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %25 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %24, i32 0, i32 0
  %26 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64, i32)* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %37 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %36, i32 0, i32 0
  %38 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64, i32)** %37, align 8
  %39 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = bitcast %struct.dentry* %40 to %struct.dentry.0*
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = bitcast %struct.inode* %42 to %struct.inode.1*
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 %38(%struct.xattr_handler* %39, %struct.dentry.0* %41, %struct.inode.1* %43, i8* %44, i8* %45, i64 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %35, %28, %20
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.xattr_handler* @xattr_resolve_name(%struct.inode*, i8**) #1

declare dso_local i64 @IS_ERR(%struct.xattr_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.xattr_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
