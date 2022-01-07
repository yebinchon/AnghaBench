; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_sop_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_sop_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.kernfs_root = type { %struct.kernfs_syscall_ops* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root.0*)* }
%struct.kernfs_root.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @kernfs_sop_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_sop_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kernfs_root*, align 8
  %7 = alloca %struct.kernfs_syscall_ops*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call i32 @kernfs_dentry_node(%struct.dentry* %8)
  %10 = call %struct.kernfs_root* @kernfs_root(i32 %9)
  store %struct.kernfs_root* %10, %struct.kernfs_root** %6, align 8
  %11 = load %struct.kernfs_root*, %struct.kernfs_root** %6, align 8
  %12 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %11, i32 0, i32 0
  %13 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %12, align 8
  store %struct.kernfs_syscall_ops* %13, %struct.kernfs_syscall_ops** %7, align 8
  %14 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %7, align 8
  %15 = icmp ne %struct.kernfs_syscall_ops* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %7, align 8
  %18 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.seq_file*, %struct.kernfs_root.0*)*, i32 (%struct.seq_file*, %struct.kernfs_root.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.seq_file*, %struct.kernfs_root.0*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %7, align 8
  %23 = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.seq_file*, %struct.kernfs_root.0*)*, i32 (%struct.seq_file*, %struct.kernfs_root.0*)** %23, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load %struct.kernfs_root*, %struct.kernfs_root** %6, align 8
  %27 = bitcast %struct.kernfs_root* %26 to %struct.kernfs_root.0*
  %28 = call i32 %24(%struct.seq_file* %25, %struct.kernfs_root.0* %27)
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.kernfs_root* @kernfs_root(i32) #1

declare dso_local i32 @kernfs_dentry_node(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
