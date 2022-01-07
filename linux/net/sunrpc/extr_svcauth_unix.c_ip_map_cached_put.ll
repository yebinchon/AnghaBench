; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32, i32, %struct.ip_map*, i32 }
%struct.ip_map = type { i32 }
%struct.sunrpc_net = type { i32 }

@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@sunrpc_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_xprt*, %struct.ip_map*)* @ip_map_cached_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_map_cached_put(%struct.svc_xprt* %0, %struct.ip_map* %1) #0 {
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca %struct.ip_map*, align 8
  %5 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %3, align 8
  store %struct.ip_map* %1, %struct.ip_map** %4, align 8
  %6 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %7 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %8 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %7, i32 0, i32 3
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %13 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %15, i32 0, i32 2
  %17 = load %struct.ip_map*, %struct.ip_map** %16, align 8
  %18 = icmp eq %struct.ip_map* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %21 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %22 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %21, i32 0, i32 2
  store %struct.ip_map* %20, %struct.ip_map** %22, align 8
  store %struct.ip_map* null, %struct.ip_map** %4, align 8
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %25 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %29 = icmp ne %struct.ip_map* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %32 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @sunrpc_net_id, align 4
  %35 = call %struct.sunrpc_net* @net_generic(i32 %33, i32 %34)
  store %struct.sunrpc_net* %35, %struct.sunrpc_net** %5, align 8
  %36 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %37 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %36, i32 0, i32 0
  %38 = load %struct.sunrpc_net*, %struct.sunrpc_net** %5, align 8
  %39 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cache_put(i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %27
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sunrpc_net* @net_generic(i32, i32) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
