; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mqueue_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mqueue_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32, %struct.ipc_namespace* }
%struct.ipc_namespace = type { i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32 }

@SB_I_NOEXEC = common dso_local global i32 0, align 4
@SB_I_NODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MQUEUE_MAGIC = common dso_local global i32 0, align 4
@mqueue_super_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @mqueue_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqueue_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ipc_namespace*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 6
  %10 = load %struct.ipc_namespace*, %struct.ipc_namespace** %9, align 8
  store %struct.ipc_namespace* %10, %struct.ipc_namespace** %7, align 8
  %11 = load i32, i32* @SB_I_NOEXEC, align 4
  %12 = load i32, i32* @SB_I_NODEV, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MQUEUE_MAGIC, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 2
  store i32* @mqueue_super_ops, i32** %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load %struct.ipc_namespace*, %struct.ipc_namespace** %7, align 8
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = load i32, i32* @S_ISVTX, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @S_IRWXUGO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.inode* @mqueue_get_inode(%struct.super_block* %29, %struct.ipc_namespace* %30, i32 %35, i32* null)
  store %struct.inode* %36, %struct.inode** %6, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call i64 @IS_ERR(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @PTR_ERR(%struct.inode* %41)
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %2
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @d_make_root(%struct.inode* %44)
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %40
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.inode* @mqueue_get_inode(%struct.super_block*, %struct.ipc_namespace*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
