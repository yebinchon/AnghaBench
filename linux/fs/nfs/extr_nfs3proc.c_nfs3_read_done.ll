; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_read_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs_pgio_header = type { {}*, i32, %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs3_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_read_done(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %8 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %8, i32 0, i32 3
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %7, align 8
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)**
  %16 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %15, align 8
  %17 = icmp ne i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)**
  %22 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %21, align 8
  %23 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %25 = call i32 %22(%struct.rpc_task* %23, %struct.nfs_pgio_header* %24)
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i64 @nfs3_async_handle_jukebox(%struct.rpc_task* %27, %struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %26
  %35 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 0
  %47 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cmpxchg(i32* %46, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %44, %39, %34
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @nfs_invalidate_atime(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %56, i32 0, i32 1
  %58 = call i32 @nfs_refresh_inode(%struct.inode* %55, i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %31, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @nfs3_async_handle_jukebox(%struct.rpc_task*, %struct.inode*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @nfs_invalidate_atime(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
