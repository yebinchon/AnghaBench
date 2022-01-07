; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_descr = type { i8* }
%struct.super_block = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32* }
%struct.fs_context = type { %struct.bpf_mount_opts* }
%struct.bpf_mount_opts = type { i32 }

@bpf_fill_super.bpf_rfiles = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }], align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BPF_FS_MAGIC = common dso_local global i32 0, align 4
@bpf_super_ops = common dso_local global i32 0, align 4
@bpf_dir_iops = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @bpf_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.bpf_mount_opts*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %10, align 8
  store %struct.bpf_mount_opts* %11, %struct.bpf_mount_opts** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load i32, i32* @BPF_FS_MAGIC, align 4
  %14 = call i32 @simple_fill_super(%struct.super_block* %12, i32 %13, %struct.tree_descr* getelementptr inbounds ([1 x %struct.tree_descr], [1 x %struct.tree_descr]* @bpf_fill_super.bpf_rfiles, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 1
  store i32* @bpf_super_ops, i32** %21, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  store i32* @bpf_dir_iops, i32** %28, align 8
  %29 = load i32, i32* @S_IALLUGO, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @S_ISVTX, align 4
  %36 = load %struct.bpf_mount_opts*, %struct.bpf_mount_opts** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_mount_opts, %struct.bpf_mount_opts* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @simple_fill_super(%struct.super_block*, i32, %struct.tree_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
