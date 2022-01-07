; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_map = type { i32 }
%struct.svc_xprt = type { i32, %struct.ip_map*, i32, i32 }
%struct.sunrpc_net = type { i32 }

@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@sunrpc_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_map* (%struct.svc_xprt*)* @ip_map_cached_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_map* @ip_map_cached_get(%struct.svc_xprt* %0) #0 {
  %2 = alloca %struct.ip_map*, align 8
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca %struct.ip_map*, align 8
  %5 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %3, align 8
  store %struct.ip_map* null, %struct.ip_map** %4, align 8
  %6 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %7 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %8 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %7, i32 0, i32 3
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %13 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %15, i32 0, i32 1
  %17 = load %struct.ip_map*, %struct.ip_map** %16, align 8
  store %struct.ip_map* %17, %struct.ip_map** %4, align 8
  %18 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %19 = icmp ne %struct.ip_map* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %11
  %21 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %22 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @sunrpc_net_id, align 4
  %25 = call %struct.sunrpc_net* @net_generic(i32 %23, i32 %24)
  store %struct.sunrpc_net* %25, %struct.sunrpc_net** %5, align 8
  %26 = load %struct.sunrpc_net*, %struct.sunrpc_net** %5, align 8
  %27 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %30 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %29, i32 0, i32 0
  %31 = call i64 @cache_is_expired(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %20
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %34, i32 0, i32 1
  store %struct.ip_map* null, %struct.ip_map** %35, align 8
  %36 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %37 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %40 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %39, i32 0, i32 0
  %41 = load %struct.sunrpc_net*, %struct.sunrpc_net** %5, align 8
  %42 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cache_put(i32* %40, i32 %43)
  store %struct.ip_map* null, %struct.ip_map** %2, align 8
  br label %55

45:                                               ; preds = %20
  %46 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %47 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %46, i32 0, i32 0
  %48 = call i32 @cache_get(i32* %47)
  br label %49

49:                                               ; preds = %45, %11
  %50 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %51 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %1
  %54 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  store %struct.ip_map* %54, %struct.ip_map** %2, align 8
  br label %55

55:                                               ; preds = %53, %33
  %56 = load %struct.ip_map*, %struct.ip_map** %2, align 8
  ret %struct.ip_map* %56
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sunrpc_net* @net_generic(i32, i32) #1

declare dso_local i64 @cache_is_expired(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cache_put(i32*, i32) #1

declare dso_local i32 @cache_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
