; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64 }
%struct.nfs_client_initdata = type { i32 }

@NFS_CS_READY = common dso_local global i64 0, align 8
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_client* @nfs_init_client(%struct.nfs_client* %0, %struct.nfs_client_initdata* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs_client_initdata*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.nfs_client_initdata* %1, %struct.nfs_client_initdata** %5, align 8
  %7 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NFS_CS_READY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  store %struct.nfs_client* %13, %struct.nfs_client** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %16 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %5, align 8
  %17 = load i32, i32* @RPC_AUTH_UNIX, align 4
  %18 = call i32 @nfs_create_rpc_client(%struct.nfs_client* %15, %struct.nfs_client_initdata* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @NFS_CS_READY, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i64 [ %23, %22 ], [ %26, %24 ]
  %29 = call i32 @nfs_mark_client_ready(%struct.nfs_client* %19, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %34 = call i32 @nfs_put_client(%struct.nfs_client* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.nfs_client* @ERR_PTR(i32 %35)
  store %struct.nfs_client* %36, %struct.nfs_client** %4, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  store %struct.nfs_client* %38, %struct.nfs_client** %3, align 8
  br label %39

39:                                               ; preds = %37, %12
  %40 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  ret %struct.nfs_client* %40
}

declare dso_local i32 @nfs_create_rpc_client(%struct.nfs_client*, %struct.nfs_client_initdata*, i32) #1

declare dso_local i32 @nfs_mark_client_ready(%struct.nfs_client*, i64) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

declare dso_local %struct.nfs_client* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
