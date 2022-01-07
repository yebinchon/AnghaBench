; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_async_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_async_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs4_state = type { i32 }
%struct.nfs_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pnfs_layout_segment = type { i32 }

@NFS4ERR_RESET_TO_PNFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs4_state*, %struct.nfs_client*, %struct.pnfs_layout_segment*, i32)* @ff_layout_async_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_async_handle_error(%struct.rpc_task* %0, %struct.nfs4_state* %1, %struct.nfs_client* %2, %struct.pnfs_layout_segment* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_task*, align 8
  %8 = alloca %struct.nfs4_state*, align 8
  %9 = alloca %struct.nfs_client*, align 8
  %10 = alloca %struct.pnfs_layout_segment*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %7, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %8, align 8
  store %struct.nfs_client* %2, %struct.nfs_client** %9, align 8
  store %struct.pnfs_layout_segment* %3, %struct.pnfs_layout_segment** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %21 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ff_layout_mark_ds_reachable(%struct.pnfs_layout_segment* %25, i32 %26)
  store i32 0, i32* %6, align 4
  br label %51

28:                                               ; preds = %5
  %29 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %10, align 8
  %30 = call i32 @pnfs_is_valid_lseg(%struct.pnfs_layout_segment* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @NFS4ERR_RESET_TO_PNFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %49 [
    i32 3, label %37
    i32 4, label %42
  ]

37:                                               ; preds = %35
  %38 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %39 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ff_layout_async_handle_error_v3(%struct.rpc_task* %38, %struct.pnfs_layout_segment* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %44 = load %struct.nfs4_state*, %struct.nfs4_state** %8, align 8
  %45 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %46 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ff_layout_async_handle_error_v4(%struct.rpc_task* %43, %struct.nfs4_state* %44, %struct.nfs_client* %45, %struct.pnfs_layout_segment* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %35
  %50 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %42, %37, %32, %24
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @ff_layout_mark_ds_reachable(%struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @pnfs_is_valid_lseg(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @ff_layout_async_handle_error_v3(%struct.rpc_task*, %struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @ff_layout_async_handle_error_v4(%struct.rpc_task*, %struct.nfs4_state*, %struct.nfs_client*, %struct.pnfs_layout_segment*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
