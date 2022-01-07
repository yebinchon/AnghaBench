; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_arp_mangle.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_arp_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { %struct.TYPE_2__*, %struct.net* }
%struct.TYPE_2__ = type { i64 }
%struct.net = type { i32 }
%struct.arphdr = type { i64, i64, i32, i64, i64 }
%struct.arp_payload = type { i32, i32 }
%struct.clusterip_config = type { i64, i32 }

@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"not mangling arp reply on different interface: cip'%d'-skb'%d'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @arp_mangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_mangle(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.arphdr*, align 8
  %9 = alloca %struct.arp_payload*, align 8
  %10 = alloca %struct.clusterip_config*, align 8
  %11 = alloca %struct.net*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %12)
  store %struct.arphdr* %13, %struct.arphdr** %8, align 8
  %14 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %15 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %14, i32 0, i32 1
  %16 = load %struct.net*, %struct.net** %15, align 8
  store %struct.net* %16, %struct.net** %11, align 8
  %17 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %18 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @ARPHRD_ETHER, align 4
  %21 = call i64 @htons(i32 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %3
  %24 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %25 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ETH_P_IP, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %32 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 4
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %37 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETH_ALEN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %30, %23, %3
  %42 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %42, i32* %4, align 4
  br label %110

43:                                               ; preds = %35
  %44 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %45 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ARPOP_REPLY, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %52 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @ARPOP_REQUEST, align 4
  %55 = call i64 @htons(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %58, i32* %4, align 4
  br label %110

59:                                               ; preds = %50, %43
  %60 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %61 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %60, i64 1
  %62 = bitcast %struct.arphdr* %61 to i8*
  %63 = bitcast i8* %62 to %struct.arp_payload*
  store %struct.arp_payload* %63, %struct.arp_payload** %9, align 8
  %64 = load %struct.net*, %struct.net** %11, align 8
  %65 = load %struct.arp_payload*, %struct.arp_payload** %9, align 8
  %66 = getelementptr inbounds %struct.arp_payload, %struct.arp_payload* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.clusterip_config* @clusterip_config_find_get(%struct.net* %64, i32 %67, i32 0)
  store %struct.clusterip_config* %68, %struct.clusterip_config** %10, align 8
  %69 = load %struct.clusterip_config*, %struct.clusterip_config** %10, align 8
  %70 = icmp ne %struct.clusterip_config* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %72, i32* %4, align 4
  br label %110

73:                                               ; preds = %59
  %74 = load %struct.clusterip_config*, %struct.clusterip_config** %10, align 8
  %75 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %78 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.clusterip_config*, %struct.clusterip_config** %10, align 8
  %85 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %88 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %86, i64 %91)
  %93 = load %struct.clusterip_config*, %struct.clusterip_config** %10, align 8
  %94 = call i32 @clusterip_config_put(%struct.clusterip_config* %93)
  %95 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %95, i32* %4, align 4
  br label %110

96:                                               ; preds = %73
  %97 = load %struct.arp_payload*, %struct.arp_payload** %9, align 8
  %98 = getelementptr inbounds %struct.arp_payload, %struct.arp_payload* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.clusterip_config*, %struct.clusterip_config** %10, align 8
  %101 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %104 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memcpy(i32 %99, i32 %102, i64 %105)
  %107 = load %struct.clusterip_config*, %struct.clusterip_config** %10, align 8
  %108 = call i32 @clusterip_config_put(%struct.clusterip_config* %107)
  %109 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %96, %83, %71, %57, %41
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.clusterip_config* @clusterip_config_find_get(%struct.net*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @clusterip_config_put(%struct.clusterip_config*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
