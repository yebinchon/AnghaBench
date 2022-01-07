; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_ipcaif_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_ipcaif_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.chnl_net = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"device rtml registration failed\0A\00", align 1
@chnl_net_list = common dso_local global i32 0, align 4
@UNDEF_CONNID = common dso_local global i64 0, align 8
@CAIFPROTO_DATAGRAM_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipcaif_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcaif_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.chnl_net*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.chnl_net* @netdev_priv(%struct.net_device* %14)
  store %struct.chnl_net* %15, %struct.chnl_net** %12, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %17 = load %struct.chnl_net*, %struct.chnl_net** %12, align 8
  %18 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %17, i32 0, i32 0
  %19 = call i32 @caif_netlink_parms(%struct.nlattr** %16, %struct.TYPE_8__* %18)
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @register_netdevice(%struct.net_device* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

26:                                               ; preds = %5
  %27 = load %struct.chnl_net*, %struct.chnl_net** %12, align 8
  %28 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %28, i32* @chnl_net_list)
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct.chnl_net*, %struct.chnl_net** %12, align 8
  %32 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UNDEF_CONNID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.chnl_net*, %struct.chnl_net** %12, align 8
  %45 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %43, i64* %49, align 8
  %50 = load i32, i32* @CAIFPROTO_DATAGRAM_LOOP, align 4
  %51 = load %struct.chnl_net*, %struct.chnl_net** %12, align 8
  %52 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %40, %30
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.chnl_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @caif_netlink_parms(%struct.nlattr**, %struct.TYPE_8__*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
