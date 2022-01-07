; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c_kernfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.kernfs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @kernfs_get_inode(%struct.super_block* %0, %struct.kernfs_node* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @iget_locked(%struct.super_block* %6, i32 %10)
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I_NEW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @kernfs_init_inode(%struct.kernfs_node* %22, %struct.inode* %23)
  br label %25

25:                                               ; preds = %21, %14, %2
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %26
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local i32 @kernfs_init_inode(%struct.kernfs_node*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
