; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_iop_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_iop_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.kernfs_node.0*)* }
%struct.kernfs_node.0 = type opaque
%struct.TYPE_2__ = type { %struct.kernfs_syscall_ops* }

@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @kernfs_iop_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_iop_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_syscall_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %9)
  store %struct.kernfs_node* %10, %struct.kernfs_node** %6, align 8
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %12 = call %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %13, align 8
  store %struct.kernfs_syscall_ops* %14, %struct.kernfs_syscall_ops** %7, align 8
  %15 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %7, align 8
  %16 = icmp ne %struct.kernfs_syscall_ops* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %7, align 8
  %19 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.kernfs_node.0*)*, i32 (%struct.kernfs_node.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.kernfs_node.0*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %17
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %27 = call i32 @kernfs_get_active(%struct.kernfs_node* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %7, align 8
  %34 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.kernfs_node.0*)*, i32 (%struct.kernfs_node.0*)** %34, align 8
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %37 = bitcast %struct.kernfs_node* %36 to %struct.kernfs_node.0*
  %38 = call i32 %35(%struct.kernfs_node.0* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %40 = call i32 @kernfs_put_active(%struct.kernfs_node* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %29, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get_active(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put_active(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
