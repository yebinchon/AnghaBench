; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs_find_best_sec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs_find_best_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_secinfo_flavors = type { i32, %struct.nfs4_secinfo4* }
%struct.nfs4_secinfo4 = type { i32, i32 }
%struct.rpc_cred = type { i32 }

@RPC_AUTH_MAXFLAVOR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.rpc_clnt*, %struct.nfs_server*, %struct.nfs4_secinfo_flavors*)* @nfs_find_best_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @nfs_find_best_sec(%struct.rpc_clnt* %0, %struct.nfs_server* %1, %struct.nfs4_secinfo_flavors* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_secinfo4*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpc_clnt*, align 8
  %12 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %6, align 8
  store %struct.nfs4_secinfo_flavors* %2, %struct.nfs4_secinfo_flavors** %7, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %74, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %7, align 8
  %16 = getelementptr inbounds %struct.nfs4_secinfo_flavors, %struct.nfs4_secinfo_flavors* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %13
  %20 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %7, align 8
  %21 = getelementptr inbounds %struct.nfs4_secinfo_flavors, %struct.nfs4_secinfo_flavors* %20, i32 0, i32 1
  %22 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %22, i64 %24
  store %struct.nfs4_secinfo4* %25, %struct.nfs4_secinfo4** %9, align 8
  %26 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %9, align 8
  %27 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %73 [
    i32 129, label %29
    i32 128, label %29
    i32 130, label %29
  ]

29:                                               ; preds = %19, %19, %19
  %30 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %9, align 8
  %31 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfs4_secinfo4*, %struct.nfs4_secinfo4** %9, align 8
  %34 = getelementptr inbounds %struct.nfs4_secinfo4, %struct.nfs4_secinfo4* %33, i32 0, i32 1
  %35 = call i32 @rpcauth_get_pseudoflavor(i32 %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @RPC_AUTH_MAXFLAVOR, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %29
  %40 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nfs_auth_info_match(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %47 = bitcast %struct.rpc_clnt* %46 to %struct.rpc_cred*
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.rpc_cred* @rpc_clone_client_set_auth(%struct.rpc_cred* %47, i32 %48)
  %50 = bitcast %struct.rpc_cred* %49 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %50, %struct.rpc_clnt** %11, align 8
  %51 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %52 = bitcast %struct.rpc_clnt* %51 to %struct.rpc_cred*
  %53 = call i32 @IS_ERR(%struct.rpc_cred* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %74

56:                                               ; preds = %45
  %57 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %58 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.rpc_cred* @rpcauth_lookupcred(i32 %59, i32 0)
  store %struct.rpc_cred* %60, %struct.rpc_cred** %12, align 8
  %61 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %62 = call i32 @IS_ERR(%struct.rpc_cred* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %66 = bitcast %struct.rpc_clnt* %65 to %struct.rpc_cred*
  %67 = call i32 @rpc_shutdown_client(%struct.rpc_cred* %66)
  br label %74

68:                                               ; preds = %56
  %69 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %70 = call i32 @put_rpccred(%struct.rpc_cred* %69)
  %71 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  store %struct.rpc_clnt* %71, %struct.rpc_clnt** %4, align 8
  br label %82

72:                                               ; preds = %39, %29
  br label %73

73:                                               ; preds = %72, %19
  br label %74

74:                                               ; preds = %73, %64, %55
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %13

77:                                               ; preds = %13
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.rpc_cred* @ERR_PTR(i32 %79)
  %81 = bitcast %struct.rpc_cred* %80 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %81, %struct.rpc_clnt** %4, align 8
  br label %82

82:                                               ; preds = %77, %68
  %83 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  ret %struct.rpc_clnt* %83
}

declare dso_local i32 @rpcauth_get_pseudoflavor(i32, i32*) #1

declare dso_local i32 @nfs_auth_info_match(i32*, i32) #1

declare dso_local %struct.rpc_cred* @rpc_clone_client_set_auth(%struct.rpc_cred*, i32) #1

declare dso_local i32 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local %struct.rpc_cred* @rpcauth_lookupcred(i32, i32) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_cred*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local %struct.rpc_cred* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
