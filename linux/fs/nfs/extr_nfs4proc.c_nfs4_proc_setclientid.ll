; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setclientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cred = type { i32 }
%struct.nfs4_setclientid_res = type { i32 }
%struct.nfs4_setclientid = type { i64, i32, i32, i32, i32, %struct.nfs_client*, i32, i32* }
%struct.rpc_message = type { %struct.cred*, %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid*, i32* }
%struct.rpc_task_setup = type { i32, %struct.nfs4_setclientid*, i32*, %struct.rpc_message*, %struct.TYPE_6__* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETCLIENTID = common dso_local global i64 0, align 8
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@RPC_TASK_NO_ROUND_ROBIN = common dso_local global i32 0, align 4
@nfs4_setclientid_ops = common dso_local global i32 0, align 4
@NFS_CS_MIGRATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"NFS call  setclientid auth=%s, '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"NFS reply setclientid: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_setclientid(%struct.nfs_client* %0, i32 %1, i16 zeroext %2, %struct.cred* %3, %struct.nfs4_setclientid_res* %4) #0 {
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.nfs4_setclientid_res*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs4_setclientid, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.rpc_task_setup, align 8
  %15 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store %struct.cred* %3, %struct.cred** %9, align 8
  store %struct.nfs4_setclientid_res* %4, %struct.nfs4_setclientid_res** %10, align 8
  %16 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 3
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 5
  %22 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  store %struct.nfs_client* %22, %struct.nfs_client** %21, align 8
  %23 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 6
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 7
  store i32* %11, i32** %25, align 8
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  %27 = load %struct.cred*, %struct.cred** %9, align 8
  store %struct.cred* %27, %struct.cred** %26, align 8
  %28 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  %29 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %10, align 8
  store %struct.nfs4_setclientid_res* %29, %struct.nfs4_setclientid_res** %28, align 8
  %30 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  store %struct.nfs4_setclientid* %12, %struct.nfs4_setclientid** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 3
  %32 = load i32*, i32** @nfs4_procedures, align 8
  %33 = load i64, i64* @NFSPROC4_CLNT_SETCLIENTID, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  %36 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %37 = load i32, i32* @RPC_TASK_NO_ROUND_ROBIN, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %35, align 8
  %39 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 1
  store %struct.nfs4_setclientid* %12, %struct.nfs4_setclientid** %39, align 8
  %40 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 2
  store i32* @nfs4_setclientid_ops, i32** %40, align 8
  %41 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 3
  store %struct.rpc_message* %13, %struct.rpc_message** %41, align 8
  %42 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 4
  %43 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %42, align 8
  %46 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %47 = call i32 @nfs4_init_boot_verifier(%struct.nfs_client* %46, i32* %11)
  %48 = load i32, i32* @NFS_CS_MIGRATION, align 4
  %49 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %49, i32 0, i32 4
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %5
  %54 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %55 = call i32 @nfs4_init_uniform_client_string(%struct.nfs_client* %54)
  store i32 %55, i32* %15, align 4
  br label %59

56:                                               ; preds = %5
  %57 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %58 = call i32 @nfs4_init_nonuniform_client_string(%struct.nfs_client* %57)
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %115

63:                                               ; preds = %59
  %64 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %65 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @nfs4_init_callback_netid(%struct.nfs_client* %64, i32 %66, i32 4)
  %68 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %72 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i16, i16* %8, align 2
  %75 = zext i16 %74 to i32
  %76 = ashr i32 %75, 8
  %77 = trunc i32 %76 to i16
  %78 = load i16, i16* %8, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 255
  %81 = trunc i32 %80 to i16
  %82 = call i32 @scnprintf(i32 %70, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %73, i16 zeroext %77, i16 zeroext %81)
  %83 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %85 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %94 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  %97 = call i32 @nfs4_call_sync_custom(%struct.rpc_task_setup* %14)
  store i32 %97, i32* %15, align 4
  %98 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %63
  %102 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %103 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @kfree(i32 %104)
  %106 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @rpcauth_stringify_acceptor(i64 %107)
  %109 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %110 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %12, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @put_rpccred(i64 %112)
  br label %114

114:                                              ; preds = %101, %63
  br label %115

115:                                              ; preds = %114, %62
  %116 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @trace_nfs4_setclientid(%struct.nfs_client* %116, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %15, align 4
  ret i32 %121
}

declare dso_local i32 @nfs4_init_boot_verifier(%struct.nfs_client*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_init_uniform_client_string(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_init_nonuniform_client_string(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_init_callback_netid(%struct.nfs_client*, i32, i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @nfs4_call_sync_custom(%struct.rpc_task_setup*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @rpcauth_stringify_acceptor(i64) #1

declare dso_local i32 @put_rpccred(i64) #1

declare dso_local i32 @trace_nfs4_setclientid(%struct.nfs_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
