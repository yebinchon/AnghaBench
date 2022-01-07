; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_find_get_deviceid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_find_get_deviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32, i32, i32, i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_deviceid = type { i32 }
%struct.cred = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NFS_DEVICEID_UNAVAILABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PNFS_DEVICE_RETRY_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_deviceid_node* (%struct.nfs_server*, %struct.nfs4_deviceid*, %struct.cred*, i32)* @bl_find_get_deviceid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_deviceid_node* @bl_find_get_deviceid(%struct.nfs_server* %0, %struct.nfs4_deviceid* %1, %struct.cred* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_deviceid_node*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_deviceid*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_deviceid_node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs4_deviceid* %1, %struct.nfs4_deviceid** %7, align 8
  store %struct.cred* %2, %struct.cred** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %45, %4
  %14 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %15 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %7, align 8
  %16 = load %struct.cred*, %struct.cred** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.nfs4_deviceid_node* @nfs4_find_get_deviceid(%struct.nfs_server* %14, %struct.nfs4_deviceid* %15, %struct.cred* %16, i32 %17)
  store %struct.nfs4_deviceid_node* %18, %struct.nfs4_deviceid_node** %10, align 8
  %19 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %10, align 8
  %20 = icmp ne %struct.nfs4_deviceid_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.nfs4_deviceid_node* @ERR_PTR(i32 %23)
  store %struct.nfs4_deviceid_node* %24, %struct.nfs4_deviceid_node** %5, align 8
  br label %58

25:                                               ; preds = %13
  %26 = load i32, i32* @NFS_DEVICEID_UNAVAILABLE, align 4
  %27 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %10, align 8
  store %struct.nfs4_deviceid_node* %32, %struct.nfs4_deviceid_node** %5, align 8
  br label %58

33:                                               ; preds = %25
  %34 = load i64, i64* @jiffies, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @PNFS_DEVICE_RETRY_TIMEOUT, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %11, align 8
  %38 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %10, align 8
  %39 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @time_in_range(i32 %40, i64 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %33
  %46 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %10, align 8
  %47 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %10, align 8
  %50 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %7, align 8
  %53 = call i32 @nfs4_delete_deviceid(i32 %48, i32 %51, %struct.nfs4_deviceid* %52)
  br label %13

54:                                               ; preds = %33
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.nfs4_deviceid_node* @ERR_PTR(i32 %56)
  store %struct.nfs4_deviceid_node* %57, %struct.nfs4_deviceid_node** %5, align 8
  br label %58

58:                                               ; preds = %54, %31, %21
  %59 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  ret %struct.nfs4_deviceid_node* %59
}

declare dso_local %struct.nfs4_deviceid_node* @nfs4_find_get_deviceid(%struct.nfs_server*, %struct.nfs4_deviceid*, %struct.cred*, i32) #1

declare dso_local %struct.nfs4_deviceid_node* @ERR_PTR(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @time_in_range(i32, i64, i64) #1

declare dso_local i32 @nfs4_delete_deviceid(i32, i32, %struct.nfs4_deviceid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
