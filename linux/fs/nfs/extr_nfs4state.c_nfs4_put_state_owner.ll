; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_put_state_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_put_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32, i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, %struct.nfs_client* }
%struct.nfs_client = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_put_state_owner(%struct.nfs4_state_owner* %0) #0 {
  %2 = alloca %struct.nfs4_state_owner*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_client*, align 8
  store %struct.nfs4_state_owner* %0, %struct.nfs4_state_owner** %2, align 8
  %5 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %5, i32 0, i32 3
  %7 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %7, %struct.nfs_server** %3, align 8
  %8 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 1
  %10 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  store %struct.nfs_client* %10, %struct.nfs_client** %4, align 8
  %11 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %11, i32 0, i32 2
  %13 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 0
  %15 = call i32 @atomic_dec_and_lock(i32* %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %30

18:                                               ; preds = %1
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %21 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %23 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %22, i32 0, i32 0
  %24 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
