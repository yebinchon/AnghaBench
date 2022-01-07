; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_read_done_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_read_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64, i32*, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs4_read_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_read_done_cb(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %8 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nfs_server* @NFS_SERVER(i32 %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %6, align 8
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @trace_nfs4_read(%struct.nfs_pgio_header* %12, i32 %15)
  %17 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 2
  %28 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 8
  %34 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 3
  %35 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 4
  %38 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %40 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nfs4_async_handle_exception(%struct.rpc_task* %38, %struct.nfs_server* %39, i32 %42, %struct.nfs4_exception* %7)
  %44 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %21
  %50 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %51 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %50)
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %62 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @renew_lease(%struct.nfs_server* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @trace_nfs4_read(%struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs4_async_handle_exception(%struct.rpc_task*, %struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

declare dso_local i32 @renew_lease(%struct.nfs_server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
