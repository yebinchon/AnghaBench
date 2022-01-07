; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_or_create_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_or_create_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lockowner = type { i32 }
%struct.nfs4_file = type { i32 }
%struct.inode = type { i32 }
%struct.nfs4_ol_stateid = type { %struct.nfs4_stid, i32 }
%struct.nfs4_stid = type { i32 }
%struct.nfs4_openowner = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }

@nfs_ok = common dso_local global i64 0, align 8
@stateid_slab = common dso_local global i32 0, align 4
@nfs4_free_lock_stateid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_ol_stateid* (%struct.nfs4_lockowner*, %struct.nfs4_file*, %struct.inode*, %struct.nfs4_ol_stateid*, i32*)* @find_or_create_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_ol_stateid* @find_or_create_lock_stateid(%struct.nfs4_lockowner* %0, %struct.nfs4_file* %1, %struct.inode* %2, %struct.nfs4_ol_stateid* %3, i32* %4) #0 {
  %6 = alloca %struct.nfs4_ol_stateid*, align 8
  %7 = alloca %struct.nfs4_lockowner*, align 8
  %8 = alloca %struct.nfs4_file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs4_ol_stateid*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfs4_stid*, align 8
  %13 = alloca %struct.nfs4_ol_stateid*, align 8
  %14 = alloca %struct.nfs4_openowner*, align 8
  %15 = alloca %struct.nfs4_client*, align 8
  store %struct.nfs4_lockowner* %0, %struct.nfs4_lockowner** %7, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.nfs4_ol_stateid* %3, %struct.nfs4_ol_stateid** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.nfs4_stid* null, %struct.nfs4_stid** %12, align 8
  %16 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %17 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nfs4_openowner* @openowner(i32 %18)
  store %struct.nfs4_openowner* %19, %struct.nfs4_openowner** %14, align 8
  %20 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %14, align 8
  %21 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nfs4_client*, %struct.nfs4_client** %22, align 8
  store %struct.nfs4_client* %23, %struct.nfs4_client** %15, align 8
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  %26 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %7, align 8
  %29 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %30 = call %struct.nfs4_ol_stateid* @find_lock_stateid(%struct.nfs4_lockowner* %28, %struct.nfs4_file* %29)
  store %struct.nfs4_ol_stateid* %30, %struct.nfs4_ol_stateid** %13, align 8
  %31 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  %32 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %13, align 8
  %35 = icmp ne %struct.nfs4_ol_stateid* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %5
  %37 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %13, align 8
  %38 = call i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid* %37)
  %39 = load i64, i64* @nfs_ok, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %72

42:                                               ; preds = %36
  %43 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %13, align 8
  %44 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %43, i32 0, i32 0
  %45 = call i32 @nfs4_put_stid(%struct.nfs4_stid* %44)
  br label %46

46:                                               ; preds = %42, %5
  %47 = load %struct.nfs4_client*, %struct.nfs4_client** %15, align 8
  %48 = load i32, i32* @stateid_slab, align 4
  %49 = load i32, i32* @nfs4_free_lock_stateid, align 4
  %50 = call %struct.nfs4_stid* @nfs4_alloc_stid(%struct.nfs4_client* %47, i32 %48, i32 %49)
  store %struct.nfs4_stid* %50, %struct.nfs4_stid** %12, align 8
  %51 = load %struct.nfs4_stid*, %struct.nfs4_stid** %12, align 8
  %52 = icmp eq %struct.nfs4_stid* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store %struct.nfs4_ol_stateid* null, %struct.nfs4_ol_stateid** %6, align 8
  br label %74

54:                                               ; preds = %46
  %55 = load %struct.nfs4_stid*, %struct.nfs4_stid** %12, align 8
  %56 = call %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid* %55)
  %57 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %7, align 8
  %58 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %61 = call %struct.nfs4_ol_stateid* @init_lock_stateid(%struct.nfs4_ol_stateid* %56, %struct.nfs4_lockowner* %57, %struct.nfs4_file* %58, %struct.inode* %59, %struct.nfs4_ol_stateid* %60)
  store %struct.nfs4_ol_stateid* %61, %struct.nfs4_ol_stateid** %13, align 8
  %62 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %13, align 8
  %63 = load %struct.nfs4_stid*, %struct.nfs4_stid** %12, align 8
  %64 = call %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid* %63)
  %65 = icmp eq %struct.nfs4_ol_stateid* %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  store i32 1, i32* %67, align 4
  br label %71

68:                                               ; preds = %54
  %69 = load %struct.nfs4_stid*, %struct.nfs4_stid** %12, align 8
  %70 = call i32 @nfs4_put_stid(%struct.nfs4_stid* %69)
  br label %71

71:                                               ; preds = %68, %66
  br label %72

72:                                               ; preds = %71, %41
  %73 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %13, align 8
  store %struct.nfs4_ol_stateid* %73, %struct.nfs4_ol_stateid** %6, align 8
  br label %74

74:                                               ; preds = %72, %53
  %75 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %6, align 8
  ret %struct.nfs4_ol_stateid* %75
}

declare dso_local %struct.nfs4_openowner* @openowner(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_ol_stateid* @find_lock_stateid(%struct.nfs4_lockowner*, %struct.nfs4_file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @nfs4_put_stid(%struct.nfs4_stid*) #1

declare dso_local %struct.nfs4_stid* @nfs4_alloc_stid(%struct.nfs4_client*, i32, i32) #1

declare dso_local %struct.nfs4_ol_stateid* @init_lock_stateid(%struct.nfs4_ol_stateid*, %struct.nfs4_lockowner*, %struct.nfs4_file*, %struct.inode*, %struct.nfs4_ol_stateid*) #1

declare dso_local %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
