; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_locku_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_locku_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32* }
%struct.nfs4_unlockdata = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NFS_CONTEXT_UNLOCK = common dso_local global i32 0, align 4
@NFS_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_locku_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_locku_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_unlockdata*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs4_unlockdata*
  store %struct.nfs4_unlockdata* %7, %struct.nfs4_unlockdata** %5, align 8
  %8 = load i32, i32* @NFS_CONTEXT_UNLOCK, align 4
  %9 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %9, i32 0, i32 5
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %8, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %19, i32 0, i32 5
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call i64 @nfs_async_iocounter_wait(%struct.rpc_task* %18, %struct.TYPE_12__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %77

25:                                               ; preds = %17, %2
  %26 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %27 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %31 = call i64 @nfs_wait_on_sequence(i32 %29, %struct.rpc_task* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %71

34:                                               ; preds = %25
  %35 = load i32, i32* @NFS_LOCK_INITIALIZED, align 4
  %36 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %36, i32 0, i32 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %35, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %68

43:                                               ; preds = %34
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %46 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %48 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %53 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %56 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %59 = call i64 @nfs4_setup_sequence(i32 %51, i32* %54, i32* %57, %struct.rpc_task* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %63 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nfs_release_seqid(i32 %65)
  br label %67

67:                                               ; preds = %61, %43
  br label %77

68:                                               ; preds = %42
  %69 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %70 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %68, %33
  %72 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %73 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %74 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = call i32 @nfs4_sequence_done(%struct.rpc_task* %72, i32* %75)
  br label %77

77:                                               ; preds = %71, %67, %24
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nfs_async_iocounter_wait(%struct.rpc_task*, %struct.TYPE_12__*) #1

declare dso_local i64 @nfs_wait_on_sequence(i32, %struct.rpc_task*) #1

declare dso_local i64 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local i32 @nfs_release_seqid(i32) #1

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
