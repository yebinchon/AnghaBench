; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_send_probe_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_send_probe_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { %struct.TYPE_5__, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.TYPE_7__*, %struct.ifreq*, i32)* }
%struct.ifreq = type opaque
%struct.ifreq.0 = type { i32 }
%struct.sockaddr_at = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@SIOCSIFADDR = common dso_local global i32 0, align 4
@SIOCGIFADDR = common dso_local global i32 0, align 4
@ATIF_PROBE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atalk_iface*)* @aarp_send_probe_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aarp_send_probe_phase1(%struct.atalk_iface* %0) #0 {
  %2 = alloca %struct.atalk_iface*, align 8
  %3 = alloca %struct.ifreq.0, align 4
  %4 = alloca %struct.sockaddr_at*, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  store %struct.atalk_iface* %0, %struct.atalk_iface** %2, align 8
  %6 = getelementptr inbounds %struct.ifreq.0, %struct.ifreq.0* %3, i32 0, i32 0
  %7 = bitcast i32* %6 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %7, %struct.sockaddr_at** %4, align 8
  %8 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %9 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.net_device_ops*, %struct.net_device_ops** %11, align 8
  store %struct.net_device_ops* %12, %struct.net_device_ops** %5, align 8
  %13 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %14 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sockaddr_at*, %struct.sockaddr_at** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %21 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ntohs(i64 %23)
  %25 = load %struct.sockaddr_at*, %struct.sockaddr_at** %4, align 8
  %26 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %29 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_7__*, %struct.ifreq*, i32)*, i32 (%struct.TYPE_7__*, %struct.ifreq*, i32)** %29, align 8
  %31 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %32 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = bitcast %struct.ifreq.0* %3 to %struct.ifreq*
  %35 = load i32, i32* @SIOCSIFADDR, align 4
  %36 = call i32 %30(%struct.TYPE_7__* %33, %struct.ifreq* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %1
  %39 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %40 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_7__*, %struct.ifreq*, i32)*, i32 (%struct.TYPE_7__*, %struct.ifreq*, i32)** %40, align 8
  %42 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %43 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = bitcast %struct.ifreq.0* %3 to %struct.ifreq*
  %46 = load i32, i32* @SIOCGIFADDR, align 4
  %47 = call i32 %41(%struct.TYPE_7__* %44, %struct.ifreq* %45, i32 %46)
  %48 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %49 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sockaddr_at*, %struct.sockaddr_at** %4, align 8
  %53 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @htons(i32 %55)
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %38
  %59 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %60 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sockaddr_at*, %struct.sockaddr_at** %4, align 8
  %64 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58, %38
  %69 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %70 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %71 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %58
  %75 = load %struct.sockaddr_at*, %struct.sockaddr_at** %4, align 8
  %76 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @htons(i32 %78)
  %80 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %81 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  %83 = load %struct.sockaddr_at*, %struct.sockaddr_at** %4, align 8
  %84 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %88 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %74, %1
  ret void
}

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
