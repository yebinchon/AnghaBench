; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.xattr_handler = type { i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64)* }
%struct.dentry.0 = type opaque
%struct.inode.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vfs_getxattr(%struct.dentry* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xattr_handler*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = call %struct.xattr_handler* @xattr_resolve_name(%struct.inode* %13, i8** %9)
  store %struct.xattr_handler* %14, %struct.xattr_handler** %12, align 8
  %15 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %16 = call i64 @IS_ERR(%struct.xattr_handler* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %20 = call i32 @PTR_ERR(%struct.xattr_handler* %19)
  store i32 %20, i32* %6, align 4
  br label %42

21:                                               ; preds = %5
  %22 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %23 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %22, i32 0, i32 0
  %24 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64)** %23, align 8
  %25 = icmp ne i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %21
  %30 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %31 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %30, i32 0, i32 0
  %32 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i64)** %31, align 8
  %33 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = bitcast %struct.dentry* %34 to %struct.dentry.0*
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = bitcast %struct.inode* %36 to %struct.inode.1*
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 %32(%struct.xattr_handler* %33, %struct.dentry.0* %35, %struct.inode.1* %37, i8* %38, i8* %39, i64 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %29, %26, %18
  %43 = load i32, i32* %6, align 4
  ret i32 %43
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
