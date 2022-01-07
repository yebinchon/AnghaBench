; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_init_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rtnl_link_ops = type { i32 }
%struct.ip_tunnel_net = type { %struct.TYPE_6__*, i32, i32*, %struct.rtnl_link_ops* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ip_tunnel_parm = type { i32 }

@IP_TNL_HASH_SIZE = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_init_net(%struct.net* %0, i32 %1, %struct.rtnl_link_ops* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtnl_link_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ip_tunnel_net*, align 8
  %11 = alloca %struct.ip_tunnel_parm, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_tunnel_net*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rtnl_link_ops* %2, %struct.rtnl_link_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.ip_tunnel_net* %16, %struct.ip_tunnel_net** %10, align 8
  %17 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %8, align 8
  %18 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %18, i32 0, i32 3
  store %struct.rtnl_link_ops* %17, %struct.rtnl_link_ops** %19, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %32, %4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @IP_TNL_HASH_SIZE, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @INIT_HLIST_HEAD(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %8, align 8
  %37 = icmp ne %struct.rtnl_link_ops* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = call i32 @net_has_fallback_tunnels(%struct.net* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.ip_tunnel_net* @net_generic(%struct.net* @init_net, i32 %43)
  store %struct.ip_tunnel_net* %44, %struct.ip_tunnel_net** %13, align 8
  %45 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %13, align 8
  %46 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %50, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %51, align 8
  store i32 0, i32* %5, align 4
  br label %109

52:                                               ; preds = %38
  %53 = call i32 @memset(%struct.ip_tunnel_parm* %11, i32 0, i32 4)
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @IFNAMSIZ, align 4
  %61 = call i32 @strlcpy(i32 %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %52
  %63 = call i32 (...) @rtnl_lock()
  %64 = load %struct.net*, %struct.net** %6, align 8
  %65 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %8, align 8
  %66 = call %struct.TYPE_6__* @__ip_tunnel_create(%struct.net* %64, %struct.rtnl_link_ops* %65, %struct.ip_tunnel_parm* %11)
  %67 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %67, i32 0, i32 0
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %68, align 8
  %69 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %70 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @IS_ERR(%struct.TYPE_6__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %76 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %83 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @ip_tunnel_bind_dev(%struct.TYPE_6__* %84)
  %86 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %91 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %92 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @netdev_priv(%struct.TYPE_6__* %93)
  %95 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %90, i32 %94)
  %96 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %97 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %102 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %74, %62
  %104 = call i32 (...) @rtnl_unlock()
  %105 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %106 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_6__* %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %42
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @net_has_fallback_tunnels(%struct.net*) #1

declare dso_local i32 @memset(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.TYPE_6__* @__ip_tunnel_create(%struct.net*, %struct.rtnl_link_ops*, %struct.ip_tunnel_parm*) #1

declare dso_local i32 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.TYPE_6__*) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, i32) #1

declare dso_local i32 @netdev_priv(%struct.TYPE_6__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
