; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_nfs4_ff_find_or_create_ds_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_nfs4_ff_find_or_create_ds_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_client = type { %struct.rpc_clnt* }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @nfs4_ff_find_or_create_ds_client(%struct.nfs4_ff_layout_mirror* %0, %struct.nfs_client* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.nfs4_ff_layout_mirror* %0, %struct.nfs4_ff_layout_mirror** %5, align 8
  store %struct.nfs_client* %1, %struct.nfs_client** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %8 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %9 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 3, label %16
    i32 4, label %20
  ]

16:                                               ; preds = %3
  %17 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 0
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %18, align 8
  store %struct.rpc_clnt* %19, %struct.rpc_clnt** %4, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.rpc_clnt* @nfs4_find_or_create_ds_client(%struct.nfs_client* %21, %struct.inode* %22)
  store %struct.rpc_clnt* %23, %struct.rpc_clnt** %4, align 8
  br label %26

24:                                               ; preds = %3
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %16, %20, %24
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  ret %struct.rpc_clnt* %27
}

declare dso_local %struct.rpc_clnt* @nfs4_find_or_create_ds_client(%struct.nfs_client*, %struct.inode*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
