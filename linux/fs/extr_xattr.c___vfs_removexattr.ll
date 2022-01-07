; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_removexattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.xattr_handler = type { i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i32*, i32, i32)* }
%struct.dentry.0 = type opaque
%struct.inode.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vfs_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.xattr_handler*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call %struct.xattr_handler* @xattr_resolve_name(%struct.inode* %10, i8** %5)
  store %struct.xattr_handler* %11, %struct.xattr_handler** %7, align 8
  %12 = load %struct.xattr_handler*, %struct.xattr_handler** %7, align 8
  %13 = call i64 @IS_ERR(%struct.xattr_handler* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.xattr_handler*, %struct.xattr_handler** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.xattr_handler* %16)
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.xattr_handler*, %struct.xattr_handler** %7, align 8
  %20 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %19, i32 0, i32 0
  %21 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i32*, i32, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i32*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i32*, i32, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.xattr_handler*, %struct.xattr_handler** %7, align 8
  %28 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %27, i32 0, i32 0
  %29 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i32*, i32, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i32*, i32, i32)** %28, align 8
  %30 = load %struct.xattr_handler*, %struct.xattr_handler** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = bitcast %struct.dentry* %31 to %struct.dentry.0*
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = bitcast %struct.inode* %33 to %struct.inode.1*
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @XATTR_REPLACE, align 4
  %37 = call i32 %29(%struct.xattr_handler* %30, %struct.dentry.0* %32, %struct.inode.1* %34, i8* %35, i32* null, i32 0, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %23, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.xattr_handler* @xattr_resolve_name(%struct.inode*, i8**) #1

declare dso_local i64 @IS_ERR(%struct.xattr_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.xattr_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
