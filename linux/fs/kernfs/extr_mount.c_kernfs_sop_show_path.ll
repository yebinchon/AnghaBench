; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_sop_show_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_sop_show_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.kernfs_root = type { %struct.kernfs_syscall_ops* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_node.0*, %struct.kernfs_root.1*)* }
%struct.kernfs_node.0 = type opaque
%struct.kernfs_root.1 = type opaque

@.str = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @kernfs_sop_show_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_sop_show_path(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_root*, align 8
  %8 = alloca %struct.kernfs_syscall_ops*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = call %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* %9)
  store %struct.kernfs_node* %10, %struct.kernfs_node** %6, align 8
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %12 = call %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* %11)
  store %struct.kernfs_root* %12, %struct.kernfs_root** %7, align 8
  %13 = load %struct.kernfs_root*, %struct.kernfs_root** %7, align 8
  %14 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %13, i32 0, i32 0
  %15 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %14, align 8
  store %struct.kernfs_syscall_ops* %15, %struct.kernfs_syscall_ops** %8, align 8
  %16 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %8, align 8
  %17 = icmp ne %struct.kernfs_syscall_ops* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %8, align 8
  %20 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.seq_file*, %struct.kernfs_node.0*, %struct.kernfs_root.1*)*, i32 (%struct.seq_file*, %struct.kernfs_node.0*, %struct.kernfs_root.1*)** %20, align 8
  %22 = icmp ne i32 (%struct.seq_file*, %struct.kernfs_node.0*, %struct.kernfs_root.1*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %8, align 8
  %25 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.seq_file*, %struct.kernfs_node.0*, %struct.kernfs_root.1*)*, i32 (%struct.seq_file*, %struct.kernfs_node.0*, %struct.kernfs_root.1*)** %25, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %29 = bitcast %struct.kernfs_node* %28 to %struct.kernfs_node.0*
  %30 = load %struct.kernfs_root*, %struct.kernfs_root** %7, align 8
  %31 = bitcast %struct.kernfs_root* %30 to %struct.kernfs_root.1*
  %32 = call i32 %26(%struct.seq_file* %27, %struct.kernfs_node.0* %29, %struct.kernfs_root.1* %31)
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %18, %2
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i32 @seq_dentry(%struct.seq_file* %34, %struct.dentry* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry*) #1

declare dso_local %struct.kernfs_root* @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i32 @seq_dentry(%struct.seq_file*, %struct.dentry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
