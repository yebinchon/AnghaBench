; ModuleID = '/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_super.c_vxfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_super.c_vxfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kstatfs = type { i32, i8*, i64, i64, i8*, i8*, i32, i32 }
%struct.vxfs_sb_info = type { %struct.vxfs_sb* }
%struct.vxfs_sb = type { i32, i32, i32 }

@VXFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@VXFS_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @vxfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.vxfs_sb_info*, align 8
  %6 = alloca %struct.vxfs_sb*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call %struct.vxfs_sb_info* @VXFS_SBI(%struct.TYPE_2__* %9)
  store %struct.vxfs_sb_info* %10, %struct.vxfs_sb_info** %5, align 8
  %11 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.vxfs_sb_info, %struct.vxfs_sb_info* %11, i32 0, i32 0
  %13 = load %struct.vxfs_sb*, %struct.vxfs_sb** %12, align 8
  store %struct.vxfs_sb* %13, %struct.vxfs_sb** %6, align 8
  %14 = load i32, i32* @VXFS_SUPER_MAGIC, align 4
  %15 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %16 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %5, align 8
  %25 = load %struct.vxfs_sb*, %struct.vxfs_sb** %6, align 8
  %26 = getelementptr inbounds %struct.vxfs_sb, %struct.vxfs_sb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %24, i32 %27)
  %29 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %30 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %5, align 8
  %32 = load %struct.vxfs_sb*, %struct.vxfs_sb** %6, align 8
  %33 = getelementptr inbounds %struct.vxfs_sb, %struct.vxfs_sb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %31, i32 %34)
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %5, align 8
  %43 = load %struct.vxfs_sb*, %struct.vxfs_sb** %6, align 8
  %44 = getelementptr inbounds %struct.vxfs_sb, %struct.vxfs_sb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %42, i32 %45)
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @VXFS_NAMELEN, align 4
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret i32 0
}

declare dso_local %struct.vxfs_sb_info* @VXFS_SBI(%struct.TYPE_2__*) #1

declare dso_local i8* @fs32_to_cpu(%struct.vxfs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
