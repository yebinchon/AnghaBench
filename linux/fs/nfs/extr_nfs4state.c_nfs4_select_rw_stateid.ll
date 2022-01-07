; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_select_rw_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_select_rw_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.cred = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NFS_CAP_STATEID_NFSV41 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_select_rw_stateid(%struct.nfs4_state* %0, i32 %1, %struct.nfs_lock_context* %2, %struct.TYPE_6__* %3, %struct.cred** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_lock_context*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.cred**, align 8
  %12 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nfs_lock_context* %2, %struct.nfs_lock_context** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store %struct.cred** %4, %struct.cred*** %11, align 8
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %7, align 8
  %14 = call i32 @nfs4_valid_open_stateid(%struct.nfs4_state* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %73

19:                                               ; preds = %5
  %20 = load %struct.cred**, %struct.cred*** %11, align 8
  %21 = icmp ne %struct.cred** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.cred**, %struct.cred*** %11, align 8
  store %struct.cred* null, %struct.cred** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = load %struct.nfs4_state*, %struct.nfs4_state** %7, align 8
  %27 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %28 = call i32 @nfs4_copy_lock_stateid(%struct.TYPE_6__* %25, %struct.nfs4_state* %26, %struct.nfs_lock_context* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %61

34:                                               ; preds = %24
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %7, align 8
  %36 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = load %struct.cred**, %struct.cred*** %11, align 8
  %41 = call i64 @nfs4_copy_delegation_stateid(i32 %37, i32 %38, %struct.TYPE_6__* %39, %struct.cred** %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %61

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %61

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = load %struct.nfs4_state*, %struct.nfs4_state** %7, align 8
  %53 = call i64 @nfs4_copy_open_stateid(%struct.TYPE_6__* %51, %struct.nfs4_state* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %49, %43, %33
  %62 = load %struct.nfs4_state*, %struct.nfs4_state** %7, align 8
  %63 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NFS_CAP_STATEID_NFSV41, align 4
  %66 = call i64 @nfs_server_capable(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %16
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @nfs4_valid_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_copy_lock_stateid(%struct.TYPE_6__*, %struct.nfs4_state*, %struct.nfs_lock_context*) #1

declare dso_local i64 @nfs4_copy_delegation_stateid(i32, i32, %struct.TYPE_6__*, %struct.cred**) #1

declare dso_local i64 @nfs4_copy_open_stateid(%struct.TYPE_6__*, %struct.nfs4_state*) #1

declare dso_local i64 @nfs_server_capable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
