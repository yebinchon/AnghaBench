; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_getlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.kernfs_node* }
%struct.kernfs_node = type { %struct.TYPE_2__, %struct.kernfs_node* }
%struct.TYPE_2__ = type { %struct.kernfs_node* }

@kernfs_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @kernfs_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_getlink(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  store %struct.kernfs_node* %11, %struct.kernfs_node** %5, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %13 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %12, i32 0, i32 1
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  store %struct.kernfs_node* %14, %struct.kernfs_node** %6, align 8
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %16 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %17, align 8
  store %struct.kernfs_node* %18, %struct.kernfs_node** %7, align 8
  %19 = call i32 @mutex_lock(i32* @kernfs_mutex)
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @kernfs_get_target_path(%struct.kernfs_node* %20, %struct.kernfs_node* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = call i32 @mutex_unlock(i32* @kernfs_mutex)
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_get_target_path(%struct.kernfs_node*, %struct.kernfs_node*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
