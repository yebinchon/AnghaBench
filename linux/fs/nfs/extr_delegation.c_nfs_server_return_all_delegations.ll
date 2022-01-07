; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_server_return_all_delegations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_server_return_all_delegations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_server_return_all_delegations(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %5 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %5, i32 0, i32 0
  %7 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  store %struct.nfs_client* %7, %struct.nfs_client** %3, align 8
  %8 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %9 = icmp eq %struct.nfs_client* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %14 = call i32 @nfs_server_mark_return_all_delegations(%struct.nfs_server* %13)
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %20 = call i32 @nfs4_schedule_state_manager(%struct.nfs_client* %19)
  %21 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %22 = call i32 @nfs4_wait_clnt_recover(%struct.nfs_client* %21)
  br label %23

23:                                               ; preds = %10, %18, %11
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nfs_server_mark_return_all_delegations(%struct.nfs_server*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs4_schedule_state_manager(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_wait_clnt_recover(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
