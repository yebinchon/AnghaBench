; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32 }
%struct.nilfs_fid = type { i32, i32, i32 }

@NILFS_FID_SIZE_NON_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_NILFS_WITH_PARENT = common dso_local global i32 0, align 4
@FILEID_NILFS_WITHOUT_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @nilfs_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nilfs_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_fid*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fid*, %struct.fid** %7, align 8
  %12 = bitcast %struct.fid* %11 to %struct.nilfs_fid*
  store %struct.nilfs_fid* %12, %struct.nilfs_fid** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NILFS_FID_SIZE_NON_CONNECTABLE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @FILEID_NILFS_WITH_PARENT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @FILEID_NILFS_WITHOUT_PARENT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %37

25:                                               ; preds = %20, %16
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %28 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %31 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %34 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.dentry* @nilfs_get_dentry(%struct.super_block* %26, i32 %29, i32 %32, i32 %35)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  br label %37

37:                                               ; preds = %25, %24
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %38
}

declare dso_local %struct.dentry* @nilfs_get_dentry(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
