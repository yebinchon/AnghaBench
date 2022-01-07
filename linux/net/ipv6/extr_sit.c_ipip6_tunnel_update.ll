; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.net* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_parm = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.sit_net = type { i32 }

@sit_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_tunnel*, %struct.ip_tunnel_parm*, i64)* @ipip6_tunnel_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip6_tunnel_update(%struct.ip_tunnel* %0, %struct.ip_tunnel_parm* %1, i64 %2) #0 {
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.ip_tunnel_parm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sit_net*, align 8
  store %struct.ip_tunnel* %0, %struct.ip_tunnel** %4, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %10 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %9, i32 0, i32 4
  %11 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %11, %struct.net** %7, align 8
  %12 = load %struct.net*, %struct.net** %7, align 8
  %13 = load i32, i32* @sit_net_id, align 4
  %14 = call %struct.sit_net* @net_generic(%struct.net* %12, i32 %13)
  store %struct.sit_net* %14, %struct.sit_net** %8, align 8
  %15 = load %struct.sit_net*, %struct.sit_net** %8, align 8
  %16 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %17 = call i32 @ipip6_tunnel_unlink(%struct.sit_net* %15, %struct.ip_tunnel* %16)
  %18 = call i32 (...) @synchronize_net()
  %19 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i32 %22, i32* %26, align 8
  %27 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %36 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = call i32 @memcpy(i32 %39, i32* %42, i32 4)
  %44 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %45 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %50 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = call i32 @memcpy(i32 %48, i32* %51, i32 4)
  %53 = load %struct.sit_net*, %struct.sit_net** %8, align 8
  %54 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %55 = call i32 @ipip6_tunnel_link(%struct.sit_net* %53, %struct.ip_tunnel* %54)
  %56 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %57 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %69 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %85 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %3
  %89 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %90 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %88, %3
  %95 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %96 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %99 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %103 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %105 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = call i32 @ipip6_tunnel_bind_dev(%struct.TYPE_9__* %106)
  br label %108

108:                                              ; preds = %94, %88
  %109 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %110 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %109, i32 0, i32 2
  %111 = call i32 @dst_cache_reset(i32* %110)
  %112 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %113 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = call i32 @netdev_state_change(%struct.TYPE_9__* %114)
  ret void
}

declare dso_local %struct.sit_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @ipip6_tunnel_unlink(%struct.sit_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ipip6_tunnel_link(%struct.sit_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @ipip6_tunnel_bind_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

declare dso_local i32 @netdev_state_change(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
