; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel_net = type { i32 }
%struct.ip_tunnel = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i64, i32, i32, i32 }
%struct.ip_tunnel_parm = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_tunnel_net*, %struct.ip_tunnel*, %struct.net_device*, %struct.ip_tunnel_parm*, i32, i64)* @ip_tunnel_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_tunnel_update(%struct.ip_tunnel_net* %0, %struct.ip_tunnel* %1, %struct.net_device* %2, %struct.ip_tunnel_parm* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ip_tunnel_net*, align 8
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ip_tunnel_parm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ip_tunnel_net* %0, %struct.ip_tunnel_net** %7, align 8
  store %struct.ip_tunnel* %1, %struct.ip_tunnel** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.ip_tunnel_parm* %3, %struct.ip_tunnel_parm** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %7, align 8
  %15 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %16 = call i32 @ip_tunnel_del(%struct.ip_tunnel_net* %14, %struct.ip_tunnel* %15)
  %17 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 %20, i32* %24, align 8
  %25 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %30 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %37 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %43 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ARPHRD_ETHER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %6
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = call i32 @memcpy(i32 %53, i32* %56, i32 4)
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %62 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = call i32 @memcpy(i32 %60, i32* %63, i32 4)
  br label %65

65:                                               ; preds = %50, %6
  %66 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %7, align 8
  %67 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %68 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %66, %struct.ip_tunnel* %67)
  %69 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %70 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %74 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 8
  %77 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %78 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %86 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %90 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %94 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %98 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %65
  %102 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %103 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %101, %65
  %108 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %109 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %112 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %116 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %9, align 8
  %118 = call i32 @ip_tunnel_bind_dev(%struct.net_device* %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %107
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.net_device*, %struct.net_device** %9, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %107
  br label %126

126:                                              ; preds = %125, %101
  %127 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %128 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %127, i32 0, i32 1
  %129 = call i32 @dst_cache_reset(i32* %128)
  %130 = load %struct.net_device*, %struct.net_device** %9, align 8
  %131 = call i32 @netdev_state_change(%struct.net_device* %130)
  ret void
}

declare dso_local i32 @ip_tunnel_del(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.net_device*) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
