; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs_pgio_header = type { {}*, %struct.inode* }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs3_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_write_done(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 1
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)**
  %13 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %12, align 8
  %14 = icmp ne i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)**
  %19 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %18, align 8
  %20 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %21 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %22 = call i32 %19(%struct.rpc_task* %20, %struct.nfs_pgio_header* %21)
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call i64 @nfs3_async_handle_jukebox(%struct.rpc_task* %24, %struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %38 = call i32 @nfs_writeback_update_inode(%struct.nfs_pgio_header* %37)
  br label %39

39:                                               ; preds = %36, %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %28, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @nfs3_async_handle_jukebox(%struct.rpc_task*, %struct.inode*) #1

declare dso_local i32 @nfs_writeback_update_inode(%struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
