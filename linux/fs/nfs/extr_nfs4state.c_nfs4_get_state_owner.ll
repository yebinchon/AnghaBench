; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_get_state_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_get_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32 }
%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { i32 }
%struct.cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_state_owner* @nfs4_get_state_owner(%struct.nfs_server* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs4_state_owner*, align 8
  %9 = alloca %struct.nfs4_state_owner*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 0
  %12 = load %struct.nfs_client*, %struct.nfs_client** %11, align 8
  store %struct.nfs_client* %12, %struct.nfs_client** %7, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %17 = load %struct.cred*, %struct.cred** %5, align 8
  %18 = call %struct.nfs4_state_owner* @nfs4_find_state_owner_locked(%struct.nfs_server* %16, %struct.cred* %17)
  store %struct.nfs4_state_owner* %18, %struct.nfs4_state_owner** %8, align 8
  %19 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %23 = icmp ne %struct.nfs4_state_owner* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %27 = load %struct.cred*, %struct.cred** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.nfs4_state_owner* @nfs4_alloc_state_owner(%struct.nfs_server* %26, %struct.cred* %27, i32 %28)
  store %struct.nfs4_state_owner* %29, %struct.nfs4_state_owner** %9, align 8
  %30 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %31 = icmp eq %struct.nfs4_state_owner* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %49

33:                                               ; preds = %25
  %34 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %35 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %38 = call %struct.nfs4_state_owner* @nfs4_insert_state_owner_locked(%struct.nfs4_state_owner* %37)
  store %struct.nfs4_state_owner* %38, %struct.nfs4_state_owner** %8, align 8
  %39 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %43 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %44 = icmp ne %struct.nfs4_state_owner* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %47 = call i32 @nfs4_free_state_owner(%struct.nfs4_state_owner* %46)
  br label %48

48:                                               ; preds = %45, %33
  br label %49

49:                                               ; preds = %48, %32, %24
  %50 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %51 = call i32 @nfs4_gc_state_owners(%struct.nfs_server* %50)
  %52 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  ret %struct.nfs4_state_owner* %52
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_find_state_owner_locked(%struct.nfs_server*, %struct.cred*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_alloc_state_owner(%struct.nfs_server*, %struct.cred*, i32) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_insert_state_owner_locked(%struct.nfs4_state_owner*) #1

declare dso_local i32 @nfs4_free_state_owner(%struct.nfs4_state_owner*) #1

declare dso_local i32 @nfs4_gc_state_owners(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
