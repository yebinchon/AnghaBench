; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_neigh.c_dn_long_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_neigh.c_dn_long_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.dn_long_packet = type { i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i64 }
%struct.dn_skb_cb = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dn_long_output: no memory\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"dn_long_output: Increasing headroom\0A\00", align 1
@DN_RT_F_PF = common dso_local global i32 0, align 4
@DN_RT_PKT_LONG = common dso_local global i32 0, align 4
@DN_RT_F_IE = common dso_local global i32 0, align 4
@DN_RT_F_RQR = common dso_local global i32 0, align 4
@DN_RT_F_RTS = common dso_local global i32 0, align 4
@NFPROTO_DECNET = common dso_local global i32 0, align 4
@NF_DN_POST_ROUTING = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@dn_neigh_output_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*, %struct.sock*, %struct.sk_buff*)* @dn_long_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_long_output(%struct.neighbour* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dn_long_packet*, align 8
  %12 = alloca %struct.dn_skb_cb*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %15 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 80
  %22 = add i64 %21, 3
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %24)
  store %struct.dn_skb_cb* %25, %struct.dn_skb_cb** %12, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @skb_headroom(%struct.sk_buff* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %13, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = call i32 @net_crit_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %123

42:                                               ; preds = %30
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @consume_skb(%struct.sk_buff* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %7, align 8
  %46 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %3
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = call i8* @skb_push(%struct.sk_buff* %48, i32 83)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = bitcast i8* %51 to %struct.dn_long_packet*
  store %struct.dn_long_packet* %52, %struct.dn_long_packet** %11, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 2
  %57 = call i32 @cpu_to_le16(i64 %56)
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @DN_RT_F_PF, align 4
  %61 = or i32 1, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* @DN_RT_PKT_LONG, align 4
  %66 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %67 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DN_RT_F_IE, align 4
  %70 = load i32, i32* @DN_RT_F_RQR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @DN_RT_F_RTS, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %68, %73
  %75 = or i32 %65, %74
  %76 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %77 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %79 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %81 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %80, i32 0, i32 10
  store i64 0, i64* %81, align 8
  %82 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %83 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %86 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dn_dn2eth(i32 %84, i32 %87)
  %89 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %90 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %92 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %91, i32 0, i32 7
  store i64 0, i64* %92, align 8
  %93 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %94 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %97 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dn_dn2eth(i32 %95, i32 %98)
  %100 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %101 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %12, align 8
  %103 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 63
  %106 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %107 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %109 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.dn_long_packet*, %struct.dn_long_packet** %11, align 8
  %111 = getelementptr inbounds %struct.dn_long_packet, %struct.dn_long_packet* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i32 @skb_reset_network_header(%struct.sk_buff* %112)
  %114 = load i32, i32* @NFPROTO_DECNET, align 4
  %115 = load i32, i32* @NF_DN_POST_ROUTING, align 4
  %116 = load %struct.sock*, %struct.sock** %6, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %119 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %118, i32 0, i32 0
  %120 = load %struct.net_device*, %struct.net_device** %119, align 8
  %121 = load i32, i32* @dn_neigh_output_packet, align 4
  %122 = call i32 @NF_HOOK(i32 %114, i32 %115, i32* @init_net, %struct.sock* %116, %struct.sk_buff* %117, i32* null, %struct.net_device* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %47, %36
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_crit_ratelimited(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @net_info_ratelimited(i8*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @dn_dn2eth(i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
