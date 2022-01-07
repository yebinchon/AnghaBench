; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_get_backchannel_cred.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_get_backchannel_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32 }
%struct.nfs4_client = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.rpc_clnt = type { i8* }
%struct.nfsd4_session = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cred* (%struct.nfs4_client*, %struct.rpc_clnt*, %struct.nfsd4_session*)* @get_backchannel_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cred* @get_backchannel_cred(%struct.nfs4_client* %0, %struct.rpc_clnt* %1, %struct.nfsd4_session* %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.nfs4_client*, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.nfsd4_session*, align 8
  %8 = alloca %struct.cred*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %5, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %6, align 8
  store %struct.nfsd4_session* %2, %struct.nfsd4_session** %7, align 8
  %9 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %21 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i8* [ %23, %19 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %24 ]
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %28 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = call i32 (...) @rpc_machine_cred()
  %30 = call %struct.cred* @get_cred(i32 %29)
  store %struct.cred* %30, %struct.cred** %4, align 8
  br label %50

31:                                               ; preds = %3
  %32 = call %struct.cred* @prepare_kernel_cred(i32* null)
  store %struct.cred* %32, %struct.cred** %8, align 8
  %33 = load %struct.cred*, %struct.cred** %8, align 8
  %34 = icmp ne %struct.cred* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store %struct.cred* null, %struct.cred** %4, align 8
  br label %50

36:                                               ; preds = %31
  %37 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cred*, %struct.cred** %8, align 8
  %42 = getelementptr inbounds %struct.cred, %struct.cred* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nfsd4_session*, %struct.nfsd4_session** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cred*, %struct.cred** %8, align 8
  %48 = getelementptr inbounds %struct.cred, %struct.cred* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cred*, %struct.cred** %8, align 8
  store %struct.cred* %49, %struct.cred** %4, align 8
  br label %50

50:                                               ; preds = %36, %35, %25
  %51 = load %struct.cred*, %struct.cred** %4, align 8
  ret %struct.cred* %51
}

declare dso_local %struct.cred* @get_cred(i32) #1

declare dso_local i32 @rpc_machine_cred(...) #1

declare dso_local %struct.cred* @prepare_kernel_cred(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
