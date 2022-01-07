; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_alloc_lock_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_alloc_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lock_state = type { i32, %struct.TYPE_4__, i32, %struct.nfs4_state*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nfs4_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nfs_server* }
%struct.nfs_server = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_lock_state* (%struct.nfs4_state*, i32)* @nfs4_alloc_lock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_lock_state* @nfs4_alloc_lock_state(%struct.nfs4_state* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_lock_state*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_lock_state*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %9 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  store %struct.nfs_server* %12, %struct.nfs_server** %7, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.nfs4_lock_state* @kzalloc(i32 40, i32 %13)
  store %struct.nfs4_lock_state* %14, %struct.nfs4_lock_state** %6, align 8
  %15 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %16 = icmp eq %struct.nfs4_lock_state* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %3, align 8
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %20 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %19, i32 0, i32 1
  %21 = call i32 @nfs4_init_seqid_counter(%struct.TYPE_4__* %20)
  %22 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %23 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %22, i32 0, i32 4
  %24 = call i32 @refcount_set(i32* %23, i32 1)
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %26 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %27 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %26, i32 0, i32 3
  store %struct.nfs4_state* %25, %struct.nfs4_state** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %30 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call i64 @ida_simple_get(i32* %32, i32 0, i32 0, i32 %33)
  %35 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %36 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %39 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %18
  br label %49

44:                                               ; preds = %18
  %45 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %46 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %45, i32 0, i32 0
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  store %struct.nfs4_lock_state* %48, %struct.nfs4_lock_state** %3, align 8
  br label %52

49:                                               ; preds = %43
  %50 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %51 = call i32 @kfree(%struct.nfs4_lock_state* %50)
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %3, align 8
  br label %52

52:                                               ; preds = %49, %44, %17
  %53 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %3, align 8
  ret %struct.nfs4_lock_state* %53
}

declare dso_local %struct.nfs4_lock_state* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs4_init_seqid_counter(%struct.TYPE_4__*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
