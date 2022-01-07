; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { i32 }
%struct.sock = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.smc_sock = type { i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SMCPROTO_SMC6 = common dso_local global i32 0, align 4
@smc_proto6 = common dso_local global %struct.proto zeroinitializer, align 4
@smc_proto = common dso_local global %struct.proto zeroinitializer, align 4
@PF_SMC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMC_INIT = common dso_local global i32 0, align 4
@smc_destruct = common dso_local global i32 0, align 4
@smc_tcp_listen_work = common dso_local global i32 0, align 4
@smc_connect_work = common dso_local global i32 0, align 4
@smc_tx_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32)* @smc_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @smc_sock_alloc(%struct.net* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_sock*, align 8
  %9 = alloca %struct.proto*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SMCPROTO_SMC6, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, %struct.proto* @smc_proto6, %struct.proto* @smc_proto
  store %struct.proto* %15, %struct.proto** %9, align 8
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load i32, i32* @PF_SMC, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.proto*, %struct.proto** %9, align 8
  %20 = call %struct.sock* @sk_alloc(%struct.net* %16, i32 %17, i32 %18, %struct.proto* %19, i32 0)
  store %struct.sock* %20, %struct.sock** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = icmp ne %struct.sock* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.socket*, %struct.socket** %6, align 8
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = call i32 @sock_init_data(%struct.socket* %25, %struct.sock* %26)
  %28 = load i32, i32* @SMC_INIT, align 4
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @smc_destruct, align 4
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = call %struct.smc_sock* @smc_sk(%struct.sock* %37)
  store %struct.smc_sock* %38, %struct.smc_sock** %8, align 8
  %39 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %40 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %39, i32 0, i32 5
  %41 = load i32, i32* @smc_tcp_listen_work, align 4
  %42 = call i32 @INIT_WORK(i32* %40, i32 %41)
  %43 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %44 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %43, i32 0, i32 4
  %45 = load i32, i32* @smc_connect_work, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %48 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* @smc_tx_work, align 4
  %51 = call i32 @INIT_DELAYED_WORK(i32* %49, i32 %50)
  %52 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %53 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %56 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %59 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %65, align 8
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = call i32 %66(%struct.sock* %67)
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = call i32 @sk_refcnt_debug_inc(%struct.sock* %69)
  %71 = load %struct.smc_sock*, %struct.smc_sock** %8, align 8
  %72 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %71, i32 0, i32 0
  %73 = call i32 @mutex_init(i32* %72)
  %74 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %74, %struct.sock** %4, align 8
  br label %75

75:                                               ; preds = %24, %23
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %76
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, %struct.proto*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
