; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_iop_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_iop_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.kernfs_node.0*, %struct.kernfs_node.0*, i32)* }
%struct.kernfs_node.0 = type opaque
%struct.TYPE_4__ = type { %struct.kernfs_syscall_ops* }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @kernfs_iop_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_iop_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kernfs_node*, align 8
  %13 = alloca %struct.kernfs_node*, align 8
  %14 = alloca %struct.kernfs_syscall_ops*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dentry*, %struct.dentry** %8, align 8
  %17 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %16)
  store %struct.kernfs_node* %17, %struct.kernfs_node** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %19, align 8
  store %struct.kernfs_node* %20, %struct.kernfs_node** %13, align 8
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %22 = call %struct.TYPE_4__* @kernfs_root(%struct.kernfs_node* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %23, align 8
  store %struct.kernfs_syscall_ops* %24, %struct.kernfs_syscall_ops** %14, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %75

30:                                               ; preds = %5
  %31 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %14, align 8
  %32 = icmp ne %struct.kernfs_syscall_ops* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %14, align 8
  %35 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.kernfs_node.0*, %struct.kernfs_node.0*, i32)*, i32 (%struct.kernfs_node.0*, %struct.kernfs_node.0*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.kernfs_node.0*, %struct.kernfs_node.0*, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %43 = call i32 @kernfs_get_active(%struct.kernfs_node* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %75

48:                                               ; preds = %41
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  %50 = call i32 @kernfs_get_active(%struct.kernfs_node* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %54 = call i32 @kernfs_put_active(%struct.kernfs_node* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %75

57:                                               ; preds = %48
  %58 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %14, align 8
  %59 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %58, i32 0, i32 0
  %60 = load i32 (%struct.kernfs_node.0*, %struct.kernfs_node.0*, i32)*, i32 (%struct.kernfs_node.0*, %struct.kernfs_node.0*, i32)** %59, align 8
  %61 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %62 = bitcast %struct.kernfs_node* %61 to %struct.kernfs_node.0*
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  %64 = bitcast %struct.kernfs_node* %63 to %struct.kernfs_node.0*
  %65 = load %struct.dentry*, %struct.dentry** %10, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %60(%struct.kernfs_node.0* %62, %struct.kernfs_node.0* %64, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  %71 = call i32 @kernfs_put_active(%struct.kernfs_node* %70)
  %72 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %73 = call i32 @kernfs_put_active(%struct.kernfs_node* %72)
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %57, %52, %45, %38, %27
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get_active(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put_active(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
