; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_new_mount_fc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_new_mount_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.path = type { i32 }
%struct.vfsmount = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.path*, i32)* @do_new_mount_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_new_mount_fc(%struct.fs_context* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %9, align 8
  %16 = load %struct.super_block*, %struct.super_block** %9, align 8
  %17 = call i32 @security_sb_kern_mount(%struct.super_block* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %9, align 8
  %22 = call i64 @mount_too_revealing(%struct.super_block* %21, i32* %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %20, %3
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %33 = call i32 @fc_drop_locked(%struct.fs_context* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.super_block*, %struct.super_block** %9, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = call i32 @up_write(i32* %37)
  %39 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %40 = call %struct.vfsmount* @vfs_create_mount(%struct.fs_context* %39)
  store %struct.vfsmount* %40, %struct.vfsmount** %8, align 8
  %41 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %42 = call i64 @IS_ERR(%struct.vfsmount* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.vfsmount* %45)
  store i32 %46, i32* %4, align 4
  br label %64

47:                                               ; preds = %35
  %48 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %49 = call i32 @real_mount(%struct.vfsmount* %48)
  %50 = load %struct.path*, %struct.path** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @do_add_mount(i32 %49, %struct.path* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %57 = call i32 @mntput(%struct.vfsmount* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.path*, %struct.path** %6, align 8
  %61 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %62 = call i32 @mnt_warn_timestamp_expiry(%struct.path* %60, %struct.vfsmount* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %55, %44, %31
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @security_sb_kern_mount(%struct.super_block*) #1

declare dso_local i64 @mount_too_revealing(%struct.super_block*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fc_drop_locked(%struct.fs_context*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.vfsmount* @vfs_create_mount(%struct.fs_context*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i32 @do_add_mount(i32, %struct.path*, i32) #1

declare dso_local i32 @real_mount(%struct.vfsmount*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local i32 @mnt_warn_timestamp_expiry(%struct.path*, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
