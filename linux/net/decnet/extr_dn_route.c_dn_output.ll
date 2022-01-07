; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.dst_entry = type { %struct.net_device* }
%struct.dn_route = type { i32, i32, i32* }
%struct.dn_skb_cb = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DN_RT_F_RQR = common dso_local global i32 0, align 4
@DN_RT_F_IE = common dso_local global i32 0, align 4
@NFPROTO_DECNET = common dso_local global i32 0, align 4
@NF_DN_LOCAL_OUT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@dn_to_neigh_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dn_output: This should not happen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @dn_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.dn_route*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.dn_skb_cb*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %8, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %16 = bitcast %struct.dst_entry* %15 to %struct.dn_route*
  store %struct.dn_route* %16, %struct.dn_route** %9, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %20)
  store %struct.dn_skb_cb* %21, %struct.dn_skb_cb** %11, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %25 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %34 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %37 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %39 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %42 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @DN_RT_F_RQR, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %46 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @DN_RT_F_IE, align 4
  %50 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %51 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %55 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @NFPROTO_DECNET, align 4
  %57 = load i32, i32* @NF_DN_LOCAL_OUT, align 4
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %10, align 8
  %61 = load i32, i32* @dn_to_neigh_output, align 4
  %62 = call i32 @NF_HOOK(i32 %56, i32 %57, i32* @init_net, %struct.sock* %58, %struct.sk_buff* %59, i32* null, %struct.net_device* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %28
  %64 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %29
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
