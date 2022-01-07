; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_ipcaif_net_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_ipcaif_net_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32* }
%struct.chnl_net = type { i32, i32, %struct.TYPE_10__, %struct.net_device*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@netdev_ops = common dso_local global i32 0, align 4
@chnl_net_destructor = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@GPRS_PDP_MTU = common dso_local global i32 0, align 4
@CAIF_NET_DEFAULT_QUEUE_LEN = common dso_local global i32 0, align 4
@chnl_recv_cb = common dso_local global i32 0, align 4
@chnl_flowctrl_cb = common dso_local global i32 0, align 4
@CAIFPROTO_DATAGRAM = common dso_local global i32 0, align 4
@CAIF_LINK_HIGH_BANDW = common dso_local global i32 0, align 4
@CAIF_PRIO_LOW = common dso_local global i32 0, align 4
@UNDEF_CONNID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipcaif_net_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcaif_net_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.chnl_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 5
  store i32* @netdev_ops, i32** %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @chnl_net_destructor, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @IFF_NOARP, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @IFF_POINTOPOINT, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @GPRS_PDP_MTU, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @CAIF_NET_DEFAULT_QUEUE_LEN, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call %struct.chnl_net* @netdev_priv(%struct.net_device* %27)
  store %struct.chnl_net* %28, %struct.chnl_net** %3, align 8
  %29 = load i32, i32* @chnl_recv_cb, align 4
  %30 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %31 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @chnl_flowctrl_cb, align 4
  %34 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %35 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %39 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %38, i32 0, i32 3
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load i32, i32* @CAIFPROTO_DATAGRAM, align 4
  %41 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %42 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @CAIF_LINK_HIGH_BANDW, align 4
  %45 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %46 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @CAIF_PRIO_LOW, align 4
  %49 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %50 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @UNDEF_CONNID, align 4
  %53 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %54 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 8
  %59 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %60 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.chnl_net*, %struct.chnl_net** %3, align 8
  %62 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %61, i32 0, i32 1
  %63 = call i32 @init_waitqueue_head(i32* %62)
  ret void
}

declare dso_local %struct.chnl_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
