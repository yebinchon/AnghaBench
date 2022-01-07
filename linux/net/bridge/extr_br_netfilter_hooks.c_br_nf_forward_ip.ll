; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_forward_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_forward_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i8*, i32 }
%struct.nf_hook_state = type { i32, i32, i32 }
%struct.nf_bridge_info = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@br_nf_forward_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @br_nf_forward_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_forward_ip(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_bridge_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %11)
  store %struct.nf_bridge_info* %12, %struct.nf_bridge_info** %8, align 8
  %13 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %14 = icmp ne %struct.nf_bridge_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %16, i32* %4, align 4
  br label %174

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @nf_bridge_unshare(%struct.sk_buff* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @NF_DROP, align 4
  store i32 %22, i32* %4, align 4
  br label %174

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %24)
  store %struct.nf_bridge_info* %25, %struct.nf_bridge_info** %8, align 8
  %26 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %27 = icmp ne %struct.nf_bridge_info* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @NF_DROP, align 4
  store i32 %29, i32* %4, align 4
  br label %174

30:                                               ; preds = %23
  %31 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %32 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.net_device* @bridge_parent(i32 %33)
  store %struct.net_device* %34, %struct.net_device** %9, align 8
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @NF_DROP, align 4
  store i32 %38, i32* %4, align 4
  br label %174

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i64 @IS_IP(%struct.sk_buff* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %46 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @is_vlan_ip(%struct.sk_buff* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %53 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @is_pppoe_ip(%struct.sk_buff* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %43, %39
  %58 = load i64, i64* @NFPROTO_IPV4, align 8
  store i64 %58, i64* %10, align 8
  br label %82

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i64 @IS_IPV6(%struct.sk_buff* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %66 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_vlan_ipv6(%struct.sk_buff* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %73 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @is_pppoe_ipv6(%struct.sk_buff* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70, %63, %59
  %78 = load i64, i64* @NFPROTO_IPV6, align 8
  store i64 %78, i64* %10, align 8
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %80, i32* %4, align 4
  br label %174

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @nf_bridge_pull_encap_header(%struct.sk_buff* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PACKET_OTHERHOST, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i64, i64* @PACKET_HOST, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %95 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %82
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @NFPROTO_IPV4, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %102 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i64 @br_validate_ipv4(i32 %103, %struct.sk_buff* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @NF_DROP, align 4
  store i32 %108, i32* %4, align 4
  br label %174

109:                                              ; preds = %100
  %110 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %111 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = call %struct.TYPE_3__* @IPCB(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %96
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @NFPROTO_IPV6, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %122 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i64 @br_validate_ipv6(i32 %123, %struct.sk_buff* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @NF_DROP, align 4
  store i32 %128, i32* %4, align 4
  br label %174

129:                                              ; preds = %120
  %130 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %131 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %116
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %141 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @NFPROTO_IPV4, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load i32, i32* @ETH_P_IP, align 4
  %147 = call i8* @htons(i32 %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %155

150:                                              ; preds = %136
  %151 = load i32, i32* @ETH_P_IPV6, align 4
  %152 = call i8* @htons(i32 %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i64, i64* %10, align 8
  %157 = load i32, i32* @NF_INET_FORWARD, align 4
  %158 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %159 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %164 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %167 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @brnf_get_logical_dev(%struct.sk_buff* %162, i32 %165, i32 %168)
  %170 = load %struct.net_device*, %struct.net_device** %9, align 8
  %171 = load i32, i32* @br_nf_forward_finish, align 4
  %172 = call i32 @NF_HOOK(i64 %156, i32 %157, i32 %160, i32* null, %struct.sk_buff* %161, i32 %169, %struct.net_device* %170, i32 %171)
  %173 = load i32, i32* @NF_STOLEN, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %155, %127, %107, %79, %37, %28, %21, %15
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_unshare(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @bridge_parent(i32) #1

declare dso_local i64 @IS_IP(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_ip(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_pppoe_ip(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_IPV6(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_pppoe_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_bridge_pull_encap_header(%struct.sk_buff*) #1

declare dso_local i64 @br_validate_ipv4(i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @br_validate_ipv6(i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @NF_HOOK(i64, i32, i32, i32*, %struct.sk_buff*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @brnf_get_logical_dev(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
