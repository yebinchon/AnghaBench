; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_alloc_state_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_alloc_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.nfs_server* }
%struct.TYPE_2__ = type { i64 }
%struct.nfs_server = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_state_owner* (%struct.nfs_server*, %struct.cred*, i32)* @nfs4_alloc_state_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_state_owner* @nfs4_alloc_state_owner(%struct.nfs_server* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs4_state_owner*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_state_owner*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.nfs4_state_owner* @kzalloc(i32 48, i32 %9)
  store %struct.nfs4_state_owner* %10, %struct.nfs4_state_owner** %8, align 8
  %11 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %12 = icmp ne %struct.nfs4_state_owner* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.nfs4_state_owner* null, %struct.nfs4_state_owner** %4, align 8
  br label %60

14:                                               ; preds = %3
  %15 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ida_simple_get(i32* %16, i32 0, i32 0, i32 %17)
  %19 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %20 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %23 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %29 = call i32 @kfree(%struct.nfs4_state_owner* %28)
  store %struct.nfs4_state_owner* null, %struct.nfs4_state_owner** %4, align 8
  br label %60

30:                                               ; preds = %14
  %31 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %32 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %33 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %32, i32 0, i32 8
  store %struct.nfs_server* %31, %struct.nfs_server** %33, align 8
  %34 = load %struct.cred*, %struct.cred** %6, align 8
  %35 = call i32 @get_cred(%struct.cred* %34)
  %36 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %37 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %39 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %38, i32 0, i32 6
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %42 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %41, i32 0, i32 5
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %45 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %44, i32 0, i32 4
  %46 = call i32 @nfs4_init_seqid_counter(%struct.TYPE_2__* %45)
  %47 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %48 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %47, i32 0, i32 3
  %49 = call i32 @atomic_set(i32* %48, i32 1)
  %50 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %51 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %50, i32 0, i32 2
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %54 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %53, i32 0, i32 1
  %55 = call i32 @seqcount_init(i32* %54)
  %56 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %57 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %56, i32 0, i32 0
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  store %struct.nfs4_state_owner* %59, %struct.nfs4_state_owner** %4, align 8
  br label %60

60:                                               ; preds = %30, %27, %13
  %61 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  ret %struct.nfs4_state_owner* %61
}

declare dso_local %struct.nfs4_state_owner* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nfs4_state_owner*) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfs4_init_seqid_counter(%struct.TYPE_2__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
