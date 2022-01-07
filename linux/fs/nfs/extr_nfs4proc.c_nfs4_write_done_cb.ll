; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_write_done_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_write_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { i32, %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs4_exception = type { i64, i32*, i32, %struct.inode* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs4_write_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_write_done_cb(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %8 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %8, i32 0, i32 2
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_nfs4_write(%struct.nfs_pgio_header* %11, i32 %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 2
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %26, align 8
  %33 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 3
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 2
  %36 = load %struct.inode*, %struct.inode** %35, align 8
  store %struct.inode* %36, %struct.inode** %33, align 8
  %37 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @NFS_SERVER(%struct.inode* %38)
  %40 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nfs4_async_handle_exception(%struct.rpc_task* %37, i32 %39, i32 %42, %struct.nfs4_exception* %7)
  %44 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %20
  %50 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %51 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %50)
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %70

54:                                               ; preds = %20
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i32 @NFS_SERVER(%struct.inode* %61)
  %63 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @renew_lease(i32 %62, i32 %65)
  %67 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %68 = call i32 @nfs_writeback_update_inode(%struct.nfs_pgio_header* %67)
  br label %69

69:                                               ; preds = %60, %55
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @trace_nfs4_write(%struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs4_async_handle_exception(%struct.rpc_task*, i32, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

declare dso_local i32 @renew_lease(i32, i32) #1

declare dso_local i32 @nfs_writeback_update_inode(%struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
