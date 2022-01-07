; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_copy_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_copy_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32 }
%struct.nfs_lock_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_lock_state = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@LK_STATE_IN_USE = common dso_local global i32 0, align 4
@NFS_LOCK_LOST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nfs4_state*, %struct.nfs_lock_context*)* @nfs4_copy_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_copy_lock_stateid(i32* %0, %struct.nfs4_state* %1, %struct.nfs_lock_context* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs_lock_context*, align 8
  %7 = alloca %struct.nfs4_lock_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  store %struct.nfs_lock_context* %2, %struct.nfs_lock_context** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %6, align 8
  %14 = icmp eq %struct.nfs_lock_context* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* @LK_STATE_IN_USE, align 4
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %19 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %71

23:                                               ; preds = %16
  %24 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %6, align 8
  %28 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %33 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state* %35, i32 %36, i32 %37)
  store %struct.nfs4_lock_state* %38, %struct.nfs4_lock_state** %7, align 8
  %39 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %40 = icmp ne %struct.nfs4_lock_state* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load i32, i32* @NFS_LOCK_LOST, align 4
  %43 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %44 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %65

50:                                               ; preds = %41, %23
  %51 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %52 = icmp ne %struct.nfs4_lock_state* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* @NFS_LOCK_INITIALIZED, align 4
  %55 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %56 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %55, i32 0, i32 1
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %62 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %61, i32 0, i32 0
  %63 = call i32 @nfs4_stateid_copy(i32* %60, i32* %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %53, %50
  br label %65

65:                                               ; preds = %64, %47
  %66 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %67 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %70 = call i32 @nfs4_put_lock_state(%struct.nfs4_lock_state* %69)
  br label %71

71:                                               ; preds = %65, %22, %15
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state*, i32, i32) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs4_put_lock_state(%struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
