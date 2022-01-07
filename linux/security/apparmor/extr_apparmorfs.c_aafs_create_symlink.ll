; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aafs_create_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aafs_create_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode_operations = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.dentry*, i8*, i8*, %struct.inode_operations*)* @aafs_create_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @aafs_create_symlink(i8* %0, %struct.dentry* %1, i8* %2, i8* %3, %struct.inode_operations* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode_operations*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.inode_operations* %4, %struct.inode_operations** %11, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.dentry* @ERR_PTR(i32 %21)
  store %struct.dentry* %22, %struct.dentry** %6, align 8
  br label %41

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @S_IFLNK, align 4
  %27 = or i32 %26, 292
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load %struct.inode_operations*, %struct.inode_operations** %11, align 8
  %32 = call %struct.dentry* @aafs_create(i8* %25, i32 %27, %struct.dentry* %28, i8* %29, i8* %30, i32* null, %struct.inode_operations* %31)
  store %struct.dentry* %32, %struct.dentry** %12, align 8
  %33 = load %struct.dentry*, %struct.dentry** %12, align 8
  %34 = call i64 @IS_ERR(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @kfree(i8* %37)
  br label %39

39:                                               ; preds = %36, %24
  %40 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %40, %struct.dentry** %6, align 8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %42
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @aafs_create(i8*, i32, %struct.dentry*, i8*, i8*, i32*, %struct.inode_operations*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
