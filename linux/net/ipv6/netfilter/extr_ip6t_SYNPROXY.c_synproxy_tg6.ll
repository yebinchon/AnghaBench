; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_SYNPROXY.c_synproxy_tg6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_SYNPROXY.c_synproxy_tg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.xt_synproxy_info* }
%struct.xt_synproxy_info = type { i32, i32 }
%struct.net = type { i32 }
%struct.synproxy_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.synproxy_options = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i64, i64, i64, i64, i64, i64 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@XT_SYNPROXY_OPT_ECN = common dso_local global i32 0, align 4
@XT_SYNPROXY_OPT_TIMESTAMP = common dso_local global i32 0, align 4
@XT_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@XT_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @synproxy_tg6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synproxy_tg6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_synproxy_info*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.synproxy_net*, align 8
  %9 = alloca %struct.synproxy_options, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.tcphdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 1
  %14 = load %struct.xt_synproxy_info*, %struct.xt_synproxy_info** %13, align 8
  store %struct.xt_synproxy_info* %14, %struct.xt_synproxy_info** %6, align 8
  %15 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %16 = call %struct.net* @xt_net(%struct.xt_action_param* %15)
  store %struct.net* %16, %struct.net** %7, align 8
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = call %struct.synproxy_net* @synproxy_pernet(%struct.net* %17)
  store %struct.synproxy_net* %18, %struct.synproxy_net** %8, align 8
  %19 = bitcast %struct.synproxy_options* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 12, i1 false)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %22 = call i32 @xt_hooknum(%struct.xt_action_param* %21)
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %24 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IPPROTO_TCP, align 4
  %27 = call i64 @nf_ip6_checksum(%struct.sk_buff* %20, i32 %22, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @NF_DROP, align 4
  store i32 %30, i32* %3, align 4
  br label %171

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %34 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %32, i32 %35, i32 56, %struct.tcphdr* %11)
  store %struct.tcphdr* %36, %struct.tcphdr** %10, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %38 = icmp eq %struct.tcphdr* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @NF_DROP, align 4
  store i32 %40, i32* %3, align 4
  br label %171

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %44 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %47 = call i32 @synproxy_parse_options(%struct.sk_buff* %42, i32 %45, %struct.tcphdr* %46, %struct.synproxy_options* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @NF_DROP, align 4
  store i32 %50, i32* %3, align 4
  br label %171

51:                                               ; preds = %41
  %52 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %132

56:                                               ; preds = %51
  %57 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %132, label %61

61:                                               ; preds = %56
  %62 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %63 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %132, label %66

66:                                               ; preds = %61
  %67 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %68 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %132, label %71

71:                                               ; preds = %66
  %72 = load %struct.synproxy_net*, %struct.synproxy_net** %8, align 8
  %73 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @this_cpu_inc(i32 %76)
  %78 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %79 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %71
  %83 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %84 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* @XT_SYNPROXY_OPT_ECN, align 4
  %89 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %82, %71
  %93 = load %struct.xt_synproxy_info*, %struct.xt_synproxy_info** %6, align 8
  %94 = getelementptr inbounds %struct.xt_synproxy_info, %struct.xt_synproxy_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load %struct.xt_synproxy_info*, %struct.xt_synproxy_info** %6, align 8
  %103 = getelementptr inbounds %struct.xt_synproxy_info, %struct.xt_synproxy_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @XT_SYNPROXY_OPT_TIMESTAMP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load %struct.xt_synproxy_info*, %struct.xt_synproxy_info** %6, align 8
  %113 = call i32 @synproxy_init_timestamp_cookie(%struct.xt_synproxy_info* %112, %struct.synproxy_options* %9)
  br label %124

114:                                              ; preds = %92
  %115 = load i32, i32* @XT_SYNPROXY_OPT_WSCALE, align 4
  %116 = load i32, i32* @XT_SYNPROXY_OPT_SACK_PERM, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @XT_SYNPROXY_OPT_ECN, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %9, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %114, %111
  %125 = load %struct.net*, %struct.net** %7, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %128 = call i32 @synproxy_send_client_synack_ipv6(%struct.net* %125, %struct.sk_buff* %126, %struct.tcphdr* %127, %struct.synproxy_options* %9)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @consume_skb(%struct.sk_buff* %129)
  %131 = load i32, i32* @NF_STOLEN, align 4
  store i32 %131, i32* %3, align 4
  br label %171

132:                                              ; preds = %66, %61, %56, %51
  %133 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %134 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %132
  %138 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %137
  %143 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %144 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %142
  %148 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %149 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %147
  %153 = load %struct.net*, %struct.net** %7, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %156 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %157 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ntohl(i32 %158)
  %160 = call i64 @synproxy_recv_client_ack_ipv6(%struct.net* %153, %struct.sk_buff* %154, %struct.tcphdr* %155, %struct.synproxy_options* %9, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = call i32 @consume_skb(%struct.sk_buff* %163)
  %165 = load i32, i32* @NF_STOLEN, align 4
  store i32 %165, i32* %3, align 4
  br label %171

166:                                              ; preds = %152
  %167 = load i32, i32* @NF_DROP, align 4
  store i32 %167, i32* %3, align 4
  br label %171

168:                                              ; preds = %147, %142, %137, %132
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %166, %162, %124, %49, %39, %29
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local %struct.synproxy_net* @synproxy_pernet(%struct.net*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @nf_ip6_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @synproxy_parse_options(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.synproxy_options*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @synproxy_init_timestamp_cookie(%struct.xt_synproxy_info*, %struct.synproxy_options*) #1

declare dso_local i32 @synproxy_send_client_synack_ipv6(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @synproxy_recv_client_ack_ipv6(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
