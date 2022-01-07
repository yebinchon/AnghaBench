; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_commit_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_commit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_commit_data = type { {}*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_commit_data*)* @nfs3_commit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_commit_done(%struct.rpc_task* %0, %struct.nfs_commit_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_commit_data*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_commit_data* %1, %struct.nfs_commit_data** %5, align 8
  %6 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %7 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.rpc_task*, %struct.nfs_commit_data*)**
  %9 = load i32 (%struct.rpc_task*, %struct.nfs_commit_data*)*, i32 (%struct.rpc_task*, %struct.nfs_commit_data*)** %8, align 8
  %10 = icmp ne i32 (%struct.rpc_task*, %struct.nfs_commit_data*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.rpc_task*, %struct.nfs_commit_data*)**
  %15 = load i32 (%struct.rpc_task*, %struct.nfs_commit_data*)*, i32 (%struct.rpc_task*, %struct.nfs_commit_data*)** %14, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %17 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %18 = call i32 %15(%struct.rpc_task* %16, %struct.nfs_commit_data* %17)
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %21 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nfs3_async_handle_jukebox(%struct.rpc_task* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nfs_refresh_inode(i32 %32, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %26, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @nfs3_async_handle_jukebox(%struct.rpc_task*, i32) #1

declare dso_local i32 @nfs_refresh_inode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
