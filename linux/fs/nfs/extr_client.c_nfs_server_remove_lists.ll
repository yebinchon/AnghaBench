; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_server_remove_lists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_server_remove_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.nfs_client* }
%struct.nfs_client = type { i32, i32, i32 }
%struct.nfs_net = type { i32 }

@nfs_net_id = common dso_local global i32 0, align 4
@NFS_CS_STOP_RENEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_server_remove_lists(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs_net*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %5 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %5, i32 0, i32 2
  %7 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  store %struct.nfs_client* %7, %struct.nfs_client** %3, align 8
  %8 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %9 = icmp eq %struct.nfs_client* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @nfs_net_id, align 4
  %16 = call %struct.nfs_net* @net_generic(i32 %14, i32 %15)
  store %struct.nfs_net* %16, %struct.nfs_net** %4, align 8
  %17 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %20, i32 0, i32 1
  %22 = call i32 @list_del_rcu(i32* %21)
  %23 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load i32, i32* @NFS_CS_STOP_RENEW, align 4
  %29 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %11
  %33 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %34 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %33, i32 0, i32 0
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.nfs_net*, %struct.nfs_net** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = call i32 (...) @synchronize_rcu()
  br label %40

40:                                               ; preds = %32, %10
  ret void
}

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
