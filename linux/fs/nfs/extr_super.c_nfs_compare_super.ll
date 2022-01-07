; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nfs_sb_mountdata = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, i32 }

@NFS_MOUNT_UNSHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @nfs_compare_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_super(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfs_sb_mountdata*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfs_sb_mountdata*
  store %struct.nfs_sb_mountdata* %11, %struct.nfs_sb_mountdata** %6, align 8
  %12 = load %struct.nfs_sb_mountdata*, %struct.nfs_sb_mountdata** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %12, i32 0, i32 1
  %14 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  store %struct.nfs_server* %14, %struct.nfs_server** %7, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %15)
  store %struct.nfs_server* %16, %struct.nfs_server** %8, align 8
  %17 = load %struct.nfs_sb_mountdata*, %struct.nfs_sb_mountdata** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %21 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %22 = call i32 @nfs_compare_super_address(%struct.nfs_server* %20, %struct.nfs_server* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFS_MOUNT_UNSHARED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 1
  %36 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %36, i32 0, i32 1
  %38 = call i64 @memcmp(i32* %35, i32* %37, i32 4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %43 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %44 = call i32 @nfs_compare_userns(%struct.nfs_server* %42, %struct.nfs_server* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @nfs_compare_mount_options(%struct.super_block* %48, %struct.nfs_server* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %46, %40, %32, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @nfs_compare_super_address(%struct.nfs_server*, %struct.nfs_server*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @nfs_compare_userns(%struct.nfs_server*, %struct.nfs_server*) #1

declare dso_local i32 @nfs_compare_mount_options(%struct.super_block*, %struct.nfs_server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
