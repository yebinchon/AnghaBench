; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtable_broute.c_ebt_broute.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtable_broute.c_ebt_broute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.nf_hook_state = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net_bridge_port = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8* }

@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_BR_BROUTING = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i64 0, align 8
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @ebt_broute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_broute(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca %struct.nf_hook_state, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = call %struct.net_bridge_port* @br_port_get_rcu(%struct.TYPE_13__* %14)
  store %struct.net_bridge_port* %15, %struct.net_bridge_port** %8, align 8
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %17 = icmp ne %struct.net_bridge_port* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %20 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %25, i32* %4, align 4
  br label %87

26:                                               ; preds = %18
  %27 = load i32, i32* @NF_BR_BROUTING, align 4
  %28 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %29 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %30 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %33 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = call i32 @nf_hook_state_init(%struct.nf_hook_state* %9, i32 %27, i32 %28, i32 %31, i32* null, i32* null, %struct.TYPE_11__* %34, i32* null)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %9, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ebt_do_table(%struct.sk_buff* %36, %struct.nf_hook_state* %9, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @NF_DROP, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %87

48:                                               ; preds = %26
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.TYPE_14__* @BR_INPUT_SKB_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call %struct.TYPE_12__* @eth_hdr(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PACKET_HOST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %48
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @ether_addr_equal(i32 %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %61
  %71 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %72 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i64 @ether_addr_equal(i32 %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i64, i64* @PACKET_OTHERHOST, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %70, %61, %48
  %86 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %46, %24
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(%struct.TYPE_13__*) #1

declare dso_local i32 @nf_hook_state_init(%struct.nf_hook_state*, i32, i32, i32, i32*, i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ebt_do_table(%struct.sk_buff*, %struct.nf_hook_state*, i32) #1

declare dso_local %struct.TYPE_14__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
