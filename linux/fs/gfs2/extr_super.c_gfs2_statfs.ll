; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kstatfs = type { i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.gfs2_statfs_change_host = type { i64, i64, i32 }

@gt_statfs_slow = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_FNAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @gfs2_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_statfs_change_host, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %7, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %17 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %24 = load i32, i32* @gt_statfs_slow, align 4
  %25 = call i64 @gfs2_tune_get(%struct.gfs2_sbd* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %29 = call i32 @gfs2_statfs_slow(%struct.gfs2_sbd* %28, %struct.gfs2_statfs_change_host* %8)
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %32 = call i32 @gfs2_statfs_i(%struct.gfs2_sbd* %31, %struct.gfs2_statfs_change_host* %8)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %33
  %39 = load i32, i32* @GFS2_MAGIC, align 4
  %40 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %59 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %61, %63
  %65 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %66 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @GFS2_FNAMESIZE, align 4
  %72 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %73 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %38, %36, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_statfs_slow(%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*) #1

declare dso_local i32 @gfs2_statfs_i(%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
