; ModuleID = '/home/carl/AnghaBench/linux/fs/ramfs/extr_inode.c_ramfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ramfs/extr_inode.c_ramfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ramfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.inode* @ramfs_get_inode(i32 %13, %struct.inode* %14, i32 %15, i32 %16)
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call i32 @d_instantiate(%struct.dentry* %23, %struct.inode* %24)
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i32 @dget(%struct.dentry* %26)
  store i32 0, i32* %10, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i32 @current_time(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %22, %4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local %struct.inode* @ramfs_get_inode(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
