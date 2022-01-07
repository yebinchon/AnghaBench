; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.h_gfs2_quota_lock_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.h_gfs2_quota_lock_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gfs2_alloc_parms = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@NO_UID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@NO_GID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_alloc_parms*)* @gfs2_quota_lock_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %0, %struct.gfs2_alloc_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_alloc_parms*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_alloc_parms* %1, %struct.gfs2_alloc_parms** %5, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 0
  %10 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__* %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %6, align 8
  %11 = load i32, i32* @UINT_MAX, align 4
  %12 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %23 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %24 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %25 = call i32 @gfs2_quota_lock(%struct.gfs2_inode* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %21
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %49 = call i32 @gfs2_quota_check(%struct.gfs2_inode* %39, i32 %43, i32 %47, %struct.gfs2_alloc_parms* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %54 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %53)
  br label %55

55:                                               ; preds = %52, %38
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %37, %28, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_quota_check(%struct.gfs2_inode*, i32, i32, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
