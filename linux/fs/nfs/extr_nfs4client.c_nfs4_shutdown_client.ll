; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_shutdown_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_shutdown_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfs_client*)* }

@NFS_CS_RENEWD = common dso_local global i32 0, align 4
@NFS_CS_IDMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*)* @nfs4_shutdown_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_shutdown_client(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %3 = load i32, i32* @NFS_CS_RENEWD, align 4
  %4 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %4, i32 0, i32 5
  %6 = call i64 @__test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %10 = call i32 @nfs4_kill_renewd(%struct.nfs_client* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.nfs_client*)*, i32 (%struct.nfs_client*)** %15, align 8
  %17 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %18 = call i32 %16(%struct.nfs_client* %17)
  %19 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %20 = call i32 @nfs4_destroy_callback(%struct.nfs_client* %19)
  %21 = load i32, i32* @NFS_CS_IDMAP, align 4
  %22 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 5
  %24 = call i64 @__test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %28 = call i32 @nfs_idmap_delete(%struct.nfs_client* %27)
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %31 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %30, i32 0, i32 4
  %32 = call i32 @rpc_destroy_wait_queue(i32* %31)
  %33 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %34 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %38 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %42 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  %45 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %46 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kfree(i32 %47)
  ret void
}

declare dso_local i64 @__test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_kill_renewd(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_destroy_callback(%struct.nfs_client*) #1

declare dso_local i32 @nfs_idmap_delete(%struct.nfs_client*) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
