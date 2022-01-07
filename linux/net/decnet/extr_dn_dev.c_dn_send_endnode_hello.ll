; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_send_endnode_hello.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_send_endnode_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_ifaddr = type { i32 }
%struct.endnode_hello_message = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.dn_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.dn_neigh = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@dn_eco_version = common dso_local global i32 0, align 4
@DN_RT_INFO_ENDN = common dso_local global i32 0, align 4
@dn_hiord = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@dn_rt_all_rt_mcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dn_ifaddr*)* @dn_send_endnode_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_send_endnode_hello(%struct.net_device* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  %5 = alloca %struct.endnode_hello_message*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dn_dev*, align 8
  %9 = alloca %struct.dn_neigh*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dn_dev* @rcu_dereference_raw(i32 %12)
  store %struct.dn_dev* %13, %struct.dn_dev** %8, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @dn_alloc_skb(i32* null, i32 56, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.endnode_hello_message* @skb_put(%struct.sk_buff* %22, i32 56)
  store %struct.endnode_hello_message* %23, %struct.endnode_hello_message** %5, align 8
  %24 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %25 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %24, i32 0, i32 0
  store i32 13, i32* %25, align 8
  %26 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %27 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @dn_eco_version, align 4
  %30 = call i32 @memcpy(i32 %28, i32 %29, i32 3)
  %31 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %32 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %35 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dn_dn2eth(i32 %33, i32 %36)
  %38 = load i32, i32* @DN_RT_INFO_ENDN, align 4
  %39 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %40 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @mtu2blksize(%struct.net_device* %41)
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %45 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %47 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %49 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memset(i32 %50, i32 0, i32 8)
  %52 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %53 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @dn_hiord, align 4
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %59 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %18
  %63 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %64 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.dn_neigh*
  store %struct.dn_neigh* %66, %struct.dn_neigh** %9, align 8
  %67 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %68 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dn_neigh*, %struct.dn_neigh** %9, align 8
  %71 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dn_dn2eth(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %62, %18
  %75 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %76 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i16
  %80 = zext i16 %79 to i32
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %83 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %85 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %87 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %86, i32 0, i32 3
  store i32 2, i32* %87, align 4
  %88 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %89 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memset(i32 %90, i32 170, i32 2)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i8** @skb_push(%struct.sk_buff* %92, i32 2)
  store i8** %93, i8*** %7, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 2
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load i8**, i8*** %7, align 8
  store i8* %98, i8** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @skb_reset_network_header(%struct.sk_buff* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load i32, i32* @dn_rt_all_rt_mcast, align 4
  %104 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %105 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dn_rt_finish_output(%struct.sk_buff* %102, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %74, %17
  ret void
}

declare dso_local %struct.dn_dev* @rcu_dereference_raw(i32) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(i32*, i32, i32) #1

declare dso_local %struct.endnode_hello_message* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dn_dn2eth(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mtu2blksize(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8** @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dn_rt_finish_output(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
