; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs40_discover_server_trunking.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs40_discover_server_trunking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cred = type { i32 }
%struct.nfs4_setclientid_res = type { i32, i32 }
%struct.nfs_net = type { i16, i16 }

@nfs_net_id = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@NFS4_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs40_discover_server_trunking(%struct.nfs_client* %0, %struct.nfs_client** %1, %struct.cred* %2) #0 {
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs_client**, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.nfs4_setclientid_res, align 4
  %8 = alloca %struct.nfs_net*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.nfs_client** %1, %struct.nfs_client*** %5, align 8
  store %struct.cred* %2, %struct.cred** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %7, i32 0, i32 0
  %12 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %7, i32 0, i32 1
  %16 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @nfs_net_id, align 4
  %23 = call %struct.nfs_net* @net_generic(i32 %21, i32 %22)
  store %struct.nfs_net* %23, %struct.nfs_net** %8, align 8
  %24 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %25 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %9, align 2
  %27 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %35 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 2
  store i16 %36, i16* %9, align 2
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %39 = load i32, i32* @NFS4_CALLBACK, align 4
  %40 = load i16, i16* %9, align 2
  %41 = load %struct.cred*, %struct.cred** %6, align 8
  %42 = call i32 @nfs4_proc_setclientid(%struct.nfs_client* %38, i32 %39, i16 zeroext %40, %struct.cred* %41, %struct.nfs4_setclientid_res* %7)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %74

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %50 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %54 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %56 = load %struct.nfs_client**, %struct.nfs_client*** %5, align 8
  %57 = load %struct.cred*, %struct.cred** %6, align 8
  %58 = call i32 @nfs40_walk_client_list(%struct.nfs_client* %55, %struct.nfs_client** %56, %struct.cred* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %46
  %62 = load %struct.nfs_client**, %struct.nfs_client*** %5, align 8
  %63 = load %struct.nfs_client*, %struct.nfs_client** %62, align 8
  %64 = call i32 @nfs4_schedule_state_renewal(%struct.nfs_client* %63)
  %65 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %66 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %71 = call i32 @nfs4_schedule_state_manager(%struct.nfs_client* %70)
  br label %72

72:                                               ; preds = %69, %61
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i32 @nfs4_proc_setclientid(%struct.nfs_client*, i32, i16 zeroext, %struct.cred*, %struct.nfs4_setclientid_res*) #1

declare dso_local i32 @nfs40_walk_client_list(%struct.nfs_client*, %struct.nfs_client**, %struct.cred*) #1

declare dso_local i32 @nfs4_schedule_state_renewal(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_schedule_state_manager(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
