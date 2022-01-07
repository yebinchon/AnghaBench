; ModuleID = '/home/carl/AnghaBench/linux/security/extr_inode.c_securityfs_create_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_inode.c_securityfs_create_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @securityfs_create_symlink(i8* %0, %struct.dentry* %1, i8* %2, %struct.inode_operations* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode_operations*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.inode_operations* %3, %struct.inode_operations** %9, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kstrdup(i8* %15, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %5, align 8
  br label %41

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @S_IFLNK, align 4
  %28 = or i32 %27, 292
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.inode_operations*, %struct.inode_operations** %9, align 8
  %32 = call %struct.dentry* @securityfs_create_dentry(i8* %26, i32 %28, %struct.dentry* %29, i8* %30, i32* null, %struct.inode_operations* %31)
  store %struct.dentry* %32, %struct.dentry** %10, align 8
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = call i64 @IS_ERR(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @kfree(i8* %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %40, %struct.dentry** %5, align 8
  br label %41

41:                                               ; preds = %39, %20
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %42
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @securityfs_create_dentry(i8*, i32, %struct.dentry*, i8*, i32*, %struct.inode_operations*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
