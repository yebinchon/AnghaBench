; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_eval_v4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_synproxy.c_nft_synproxy_eval_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_synproxy = type { %struct.nf_synproxy_info }
%struct.nf_synproxy_info = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i64, i64 }
%struct.synproxy_options = type { i32 }
%struct.net = type { i32 }
%struct.synproxy_net = type { i32 }

@NF_STOLEN = common dso_local global i8* null, align 8
@NF_DROP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_synproxy*, %struct.nft_regs*, %struct.nft_pktinfo*, %struct.tcphdr*, %struct.tcphdr*, %struct.synproxy_options*)* @nft_synproxy_eval_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_synproxy_eval_v4(%struct.nft_synproxy* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2, %struct.tcphdr* %3, %struct.tcphdr* %4, %struct.synproxy_options* %5) #0 {
  %7 = alloca %struct.nft_synproxy*, align 8
  %8 = alloca %struct.nft_regs*, align 8
  %9 = alloca %struct.nft_pktinfo*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca %struct.synproxy_options*, align 8
  %13 = alloca %struct.nf_synproxy_info, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.synproxy_net*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.nft_synproxy* %0, %struct.nft_synproxy** %7, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %8, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %9, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %10, align 8
  store %struct.tcphdr* %4, %struct.tcphdr** %11, align 8
  store %struct.synproxy_options* %5, %struct.synproxy_options** %12, align 8
  %17 = load %struct.nft_synproxy*, %struct.nft_synproxy** %7, align 8
  %18 = getelementptr inbounds %struct.nft_synproxy, %struct.nft_synproxy* %17, i32 0, i32 0
  %19 = bitcast %struct.nf_synproxy_info* %13 to i8*
  %20 = bitcast %struct.nf_synproxy_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %9, align 8
  %22 = call %struct.net* @nft_net(%struct.nft_pktinfo* %21)
  store %struct.net* %22, %struct.net** %14, align 8
  %23 = load %struct.net*, %struct.net** %14, align 8
  %24 = call %struct.synproxy_net* @synproxy_pernet(%struct.net* %23)
  store %struct.synproxy_net* %24, %struct.synproxy_net** %15, align 8
  %25 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %9, align 8
  %26 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %16, align 8
  %28 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %6
  %33 = load %struct.synproxy_options*, %struct.synproxy_options** %12, align 8
  %34 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %35 = load %struct.synproxy_net*, %struct.synproxy_net** %15, align 8
  %36 = load %struct.nft_synproxy*, %struct.nft_synproxy** %7, align 8
  %37 = call i32 @nft_synproxy_tcp_options(%struct.synproxy_options* %33, %struct.tcphdr* %34, %struct.synproxy_net* %35, %struct.nf_synproxy_info* %13, %struct.nft_synproxy* %36)
  %38 = load %struct.net*, %struct.net** %14, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %40 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %41 = load %struct.synproxy_options*, %struct.synproxy_options** %12, align 8
  %42 = call i32 @synproxy_send_client_synack(%struct.net* %38, %struct.sk_buff* %39, %struct.tcphdr* %40, %struct.synproxy_options* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %44 = call i32 @consume_skb(%struct.sk_buff* %43)
  %45 = load i8*, i8** @NF_STOLEN, align 8
  %46 = load %struct.nft_regs*, %struct.nft_regs** %8, align 8
  %47 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %79

49:                                               ; preds = %6
  %50 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %51 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.net*, %struct.net** %14, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %57 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %58 = load %struct.synproxy_options*, %struct.synproxy_options** %12, align 8
  %59 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %60 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ntohl(i32 %61)
  %63 = call i64 @synproxy_recv_client_ack(%struct.net* %55, %struct.sk_buff* %56, %struct.tcphdr* %57, %struct.synproxy_options* %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %67 = call i32 @consume_skb(%struct.sk_buff* %66)
  %68 = load i8*, i8** @NF_STOLEN, align 8
  %69 = load %struct.nft_regs*, %struct.nft_regs** %8, align 8
  %70 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %77

72:                                               ; preds = %54
  %73 = load i8*, i8** @NF_DROP, align 8
  %74 = load %struct.nft_regs*, %struct.nft_regs** %8, align 8
  %75 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %65
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.net* @nft_net(%struct.nft_pktinfo*) #2

declare dso_local %struct.synproxy_net* @synproxy_pernet(%struct.net*) #2

declare dso_local i32 @nft_synproxy_tcp_options(%struct.synproxy_options*, %struct.tcphdr*, %struct.synproxy_net*, %struct.nf_synproxy_info*, %struct.nft_synproxy*) #2

declare dso_local i32 @synproxy_send_client_synack(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*) #2

declare dso_local i32 @consume_skb(%struct.sk_buff*) #2

declare dso_local i64 @synproxy_recv_client_ack(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*, i32) #2

declare dso_local i32 @ntohl(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
