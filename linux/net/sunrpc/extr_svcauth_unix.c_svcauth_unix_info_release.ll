; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_svcauth_unix_info_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_svcauth_unix_info_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32, %struct.ip_map* }
%struct.ip_map = type { i32 }
%struct.sunrpc_net = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svcauth_unix_info_release(%struct.svc_xprt* %0) #0 {
  %2 = alloca %struct.svc_xprt*, align 8
  %3 = alloca %struct.ip_map*, align 8
  %4 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %2, align 8
  %5 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %5, i32 0, i32 1
  %7 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  store %struct.ip_map* %7, %struct.ip_map** %3, align 8
  %8 = load %struct.ip_map*, %struct.ip_map** %3, align 8
  %9 = icmp ne %struct.ip_map* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %12 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @sunrpc_net_id, align 4
  %15 = call %struct.sunrpc_net* @net_generic(i32 %13, i32 %14)
  store %struct.sunrpc_net* %15, %struct.sunrpc_net** %4, align 8
  %16 = load %struct.ip_map*, %struct.ip_map** %3, align 8
  %17 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %16, i32 0, i32 0
  %18 = load %struct.sunrpc_net*, %struct.sunrpc_net** %4, align 8
  %19 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cache_put(i32* %17, i32 %20)
  br label %22

22:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.sunrpc_net* @net_generic(i32, i32) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
