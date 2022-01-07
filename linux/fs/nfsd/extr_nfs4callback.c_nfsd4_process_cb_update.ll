; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_nfsd4_process_cb_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_nfsd4_process_cb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_callback = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.nfs4_cb_conn = type { i32 }
%struct.nfsd4_session = type { i32 }
%struct.nfsd4_conn = type { %struct.nfsd4_session*, i32 }

@NFSD4_CLIENT_CB_KILL = common dso_local global i32 0, align 4
@NFSD4_CLIENT_CB_FLAG_MASK = common dso_local global i32 0, align 4
@NFSD4_CLIENT_CB_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_callback*)* @nfsd4_process_cb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_process_cb_update(%struct.nfsd4_callback* %0) #0 {
  %2 = alloca %struct.nfsd4_callback*, align 8
  %3 = alloca %struct.nfs4_cb_conn, align 4
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.nfsd4_session*, align 8
  %6 = alloca %struct.nfsd4_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsd4_callback* %0, %struct.nfsd4_callback** %2, align 8
  %8 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %2, align 8
  %9 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %8, i32 0, i32 0
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  store %struct.nfs4_client* %10, %struct.nfs4_client** %4, align 8
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %5, align 8
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @rpc_shutdown_client(i32* %18)
  %20 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @put_cred(i32* %24)
  %26 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %27 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %15, %1
  %29 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %36 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @svc_xprt_put(i32* %38)
  %40 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %41 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load i32, i32* @NFSD4_CLIENT_CB_KILL, align 4
  %45 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %46 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %101

50:                                               ; preds = %43
  %51 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %52 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %51, i32 0, i32 1
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %55 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NFSD4_CLIENT_CB_FLAG_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i32, i32* @NFSD4_CLIENT_CB_UPDATE, align 4
  %64 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %65 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %64, i32 0, i32 0
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  %67 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %2, align 8
  %68 = getelementptr inbounds %struct.nfsd4_callback, %struct.nfsd4_callback* %67, i32 0, i32 0
  %69 = load %struct.nfs4_client*, %struct.nfs4_client** %68, align 8
  %70 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %69, i32 0, i32 2
  %71 = call i32 @memcpy(%struct.nfs4_cb_conn* %3, %struct.TYPE_2__* %70, i32 4)
  %72 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %73 = call %struct.nfsd4_conn* @__nfsd4_find_backchannel(%struct.nfs4_client* %72)
  store %struct.nfsd4_conn* %73, %struct.nfsd4_conn** %6, align 8
  %74 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %75 = icmp ne %struct.nfsd4_conn* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %50
  %77 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %78 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @svc_xprt_get(i32 %79)
  %81 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %82 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.nfs4_cb_conn, %struct.nfs4_cb_conn* %3, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %86 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %85, i32 0, i32 0
  %87 = load %struct.nfsd4_session*, %struct.nfsd4_session** %86, align 8
  store %struct.nfsd4_session* %87, %struct.nfsd4_session** %5, align 8
  br label %88

88:                                               ; preds = %76, %50
  %89 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %90 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %93 = load %struct.nfsd4_session*, %struct.nfsd4_session** %5, align 8
  %94 = call i32 @setup_callback_client(%struct.nfs4_client* %92, %struct.nfs4_cb_conn* %3, %struct.nfsd4_session* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @nfsd4_mark_cb_down(%struct.nfs4_client* %98, i32 %99)
  br label %101

101:                                              ; preds = %49, %97, %88
  ret void
}

declare dso_local i32 @rpc_shutdown_client(i32*) #1

declare dso_local i32 @put_cred(i32*) #1

declare dso_local i32 @svc_xprt_put(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.nfs4_cb_conn*, %struct.TYPE_2__*, i32) #1

declare dso_local %struct.nfsd4_conn* @__nfsd4_find_backchannel(%struct.nfs4_client*) #1

declare dso_local i32 @svc_xprt_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @setup_callback_client(%struct.nfs4_client*, %struct.nfs4_cb_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_mark_cb_down(%struct.nfs4_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
