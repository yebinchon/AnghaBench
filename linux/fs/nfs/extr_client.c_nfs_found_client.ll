; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_found_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_found_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client_initdata = type { i32 }
%struct.nfs_client = type { i64 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@NFS_CS_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_client* (%struct.nfs_client_initdata*, %struct.nfs_client*)* @nfs_found_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_client* @nfs_found_client(%struct.nfs_client_initdata* %0, %struct.nfs_client* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs_client_initdata*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client_initdata* %0, %struct.nfs_client_initdata** %4, align 8
  store %struct.nfs_client* %1, %struct.nfs_client** %5, align 8
  %7 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %8 = call i32 @nfs_wait_client_init_complete(%struct.nfs_client* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %13 = call i32 @nfs_put_client(%struct.nfs_client* %12)
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.nfs_client* @ERR_PTR(i32 %15)
  store %struct.nfs_client* %16, %struct.nfs_client** %3, align 8
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NFS_CS_READY, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %29 = call i32 @nfs_put_client(%struct.nfs_client* %28)
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.nfs_client* @ERR_PTR(i32 %30)
  store %struct.nfs_client* %31, %struct.nfs_client** %3, align 8
  br label %35

32:                                               ; preds = %17
  %33 = call i32 (...) @smp_rmb()
  %34 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  store %struct.nfs_client* %34, %struct.nfs_client** %3, align 8
  br label %35

35:                                               ; preds = %32, %23, %11
  %36 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  ret %struct.nfs_client* %36
}

declare dso_local i32 @nfs_wait_client_init_complete(%struct.nfs_client*) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

declare dso_local %struct.nfs_client* @ERR_PTR(i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
