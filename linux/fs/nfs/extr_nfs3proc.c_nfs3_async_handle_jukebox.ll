; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_async_handle_jukebox.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_async_handle_jukebox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.inode = type { i32 }

@EJUKEBOX = common dso_local global i32 0, align 4
@NFSIOS_DELAY = common dso_local global i32 0, align 4
@NFS_JUKEBOX_RETRY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*)* @nfs3_async_handle_jukebox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_async_handle_jukebox(%struct.rpc_task* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EJUKEBOX, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EJUKEBOX, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load i32, i32* @NFSIOS_DELAY, align 4
  %23 = call i32 @nfs_inc_stats(%struct.inode* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %28 = call i32 @rpc_restart_call(%struct.rpc_task* %27)
  %29 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %30 = load i32, i32* @NFS_JUKEBOX_RETRY_TIME, align 4
  %31 = call i32 @rpc_delay(%struct.rpc_task* %29, i32 %30)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @rpc_restart_call(%struct.rpc_task*) #1

declare dso_local i32 @rpc_delay(%struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
