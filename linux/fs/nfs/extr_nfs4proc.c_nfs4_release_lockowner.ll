; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_release_lockowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_release_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.nfs4_lock_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nfs_release_lockowner_data = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.nfs_server*, %struct.nfs4_lock_state* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.rpc_message = type { %struct.TYPE_12__*, %struct.TYPE_11__*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_RELEASE_LOCKOWNER = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@nfs4_release_lockowner_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, %struct.nfs4_lock_state*)* @nfs4_release_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_release_lockowner(%struct.nfs_server* %0, %struct.nfs4_lock_state* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs4_lock_state*, align 8
  %5 = alloca %struct.nfs_release_lockowner_data*, align 8
  %6 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs4_lock_state* %1, %struct.nfs4_lock_state** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %8 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 2
  %10 = load i32*, i32** @nfs4_procedures, align 8
  %11 = load i64, i64* @NFSPROC4_CLNT_RELEASE_LOCKOWNER, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32* %12, i32** %9, align 8
  %13 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %77

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.nfs_release_lockowner_data* @kmalloc(i32 40, i32 %23)
  store %struct.nfs_release_lockowner_data* %24, %struct.nfs_release_lockowner_data** %5, align 8
  %25 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %26 = icmp ne %struct.nfs_release_lockowner_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %77

28:                                               ; preds = %22
  %29 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %30 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %30, i32 0, i32 3
  store %struct.nfs4_lock_state* %29, %struct.nfs4_lock_state** %31, align 8
  %32 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %33 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %33, i32 0, i32 2
  store %struct.nfs_server* %32, %struct.nfs_server** %34, align 8
  %35 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32 %39, i32* %43, align 4
  %44 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %4, align 8
  %45 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %60 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %61, align 8
  %62 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %64, align 8
  %65 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %66 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %69 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = call i32 @nfs4_init_sequence(i32* %67, i32* %70, i32 0, i32 0)
  %72 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %73 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %5, align 8
  %76 = call i32 @rpc_call_async(i32 %74, %struct.rpc_message* %6, i32 0, i32* @nfs4_release_lockowner_ops, %struct.nfs_release_lockowner_data* %75)
  br label %77

77:                                               ; preds = %28, %27, %21
  ret void
}

declare dso_local %struct.nfs_release_lockowner_data* @kmalloc(i32, i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @rpc_call_async(i32, %struct.rpc_message*, i32, i32*, %struct.nfs_release_lockowner_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
