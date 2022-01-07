; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_chnl_net_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_chnl_net.c_chnl_net_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.chnl_net = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Size of skb exceeded MTU\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"dropping packets flow off\0A\00", align 1
@CAIFPROTO_DATAGRAM_LOOP = common dso_local global i64 0, align 8
@CAIF_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @chnl_net_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chnl_net_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.chnl_net*, align 8
  %7 = alloca %struct.cfpkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %7, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.chnl_net* @netdev_priv(%struct.net_device* %10)
  store %struct.chnl_net* %11, %struct.chnl_net** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.chnl_net*, %struct.chnl_net** %6, align 8
  %16 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %14, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @kfree_skb(%struct.sk_buff* %23)
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %106

31:                                               ; preds = %2
  %32 = load %struct.chnl_net*, %struct.chnl_net** %6, align 8
  %33 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %106

46:                                               ; preds = %31
  %47 = load %struct.chnl_net*, %struct.chnl_net** %6, align 8
  %48 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CAIFPROTO_DATAGRAM_LOOP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @swap(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %53, %46
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @CAIF_DIR_OUT, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = bitcast %struct.sk_buff* %69 to i8*
  %71 = call %struct.cfpkt* @cfpkt_fromnative(i32 %68, i8* %70)
  store %struct.cfpkt* %71, %struct.cfpkt** %7, align 8
  %72 = load %struct.chnl_net*, %struct.chnl_net** %6, align 8
  %73 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_11__*, %struct.cfpkt*)*, i32 (%struct.TYPE_11__*, %struct.cfpkt*)** %76, align 8
  %78 = load %struct.chnl_net*, %struct.chnl_net** %6, align 8
  %79 = getelementptr inbounds %struct.chnl_net, %struct.chnl_net* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %83 = call i32 %77(%struct.TYPE_11__* %81, %struct.cfpkt* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %63
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %106

93:                                               ; preds = %63
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %93, %86, %36, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.chnl_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.cfpkt* @cfpkt_fromnative(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
