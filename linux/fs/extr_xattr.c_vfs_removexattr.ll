; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c_vfs_removexattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c_vfs_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@MAY_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @MAY_WRITE, align 4
  %14 = call i32 @xattr_permission(%struct.inode* %11, i8* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 @inode_lock(%struct.inode* %20)
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @security_inode_removexattr(%struct.dentry* %22, i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @__vfs_removexattr(%struct.dentry* %29, i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call i32 @fsnotify_xattr(%struct.dentry* %35)
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @evm_inode_post_removexattr(%struct.dentry* %37, i8* %38)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @inode_unlock(%struct.inode* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @xattr_permission(%struct.inode*, i8*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @security_inode_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @__vfs_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @fsnotify_xattr(%struct.dentry*) #1

declare dso_local i32 @evm_inode_post_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
