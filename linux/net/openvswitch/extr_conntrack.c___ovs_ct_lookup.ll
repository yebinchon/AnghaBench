; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c___ovs_ct_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c___ovs_ct_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.ovs_conntrack_info = type { i32, i32, i64, %struct.nf_conn*, i64 }
%struct.nf_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { %struct.net*, i32, i32 }

@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@IP_CT_NEW = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OVS_CS_F_NAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*)* @__ovs_ct_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ovs_ct_lookup(%struct.net* %0, %struct.sw_flow_key* %1, %struct.ovs_conntrack_info* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_conntrack_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca %struct.nf_hook_state, align 8
  %14 = alloca %struct.nf_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_conntrack_info* %2, %struct.ovs_conntrack_info** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %17 = load %struct.net*, %struct.net** %6, align 8
  %18 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %19 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call i32 @skb_nfct_cached(%struct.net* %17, %struct.sw_flow_key* %18, %struct.ovs_conntrack_info* %19, %struct.sk_buff* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %70, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %13, i32 0, i32 0
  %26 = load %struct.net*, %struct.net** %6, align 8
  store %struct.net* %26, %struct.net** %25, align 8
  %27 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %13, i32 0, i32 1
  %28 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %29 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %13, i32 0, i32 2
  %32 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  store i32 %32, i32* %31, align 4
  %33 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %34 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %33, i32 0, i32 3
  %35 = load %struct.nf_conn*, %struct.nf_conn** %34, align 8
  store %struct.nf_conn* %35, %struct.nf_conn** %14, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %37 = icmp ne %struct.nf_conn* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %24
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i64 @skb_nfct(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = call i64 @skb_nfct(%struct.sk_buff* %43)
  %45 = call i32 @nf_conntrack_put(i64 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 0
  %49 = call i32 @nf_conntrack_get(i32* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %52 = load i32, i32* @IP_CT_NEW, align 4
  %53 = call i32 @nf_ct_set(%struct.sk_buff* %50, %struct.nf_conn* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %24
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = call i32 @nf_conntrack_in(%struct.sk_buff* %55, %struct.nf_hook_state* %13)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @NF_ACCEPT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %181

63:                                               ; preds = %54
  %64 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %65 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %68 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %69 = call i32 @ovs_ct_update_key(%struct.sk_buff* %66, %struct.ovs_conntrack_info* %67, %struct.sw_flow_key* %68, i32 1, i32 1)
  br label %70

70:                                               ; preds = %63, %4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %71, i32* %11)
  store %struct.nf_conn* %72, %struct.nf_conn** %12, align 8
  %73 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %74 = icmp ne %struct.nf_conn* %73, null
  br i1 %74, label %75, label %180

75:                                               ; preds = %70
  %76 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %77 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %75
  %81 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %82 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @OVS_CS_F_NAT_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %80
  %88 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %89 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %93 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91, %87
  %97 = load %struct.net*, %struct.net** %6, align 8
  %98 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %99 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ovs_ct_nat(%struct.net* %97, %struct.sw_flow_key* %98, %struct.ovs_conntrack_info* %99, %struct.sk_buff* %100, %struct.nf_conn* %101, i32 %102)
  %104 = load i32, i32* @NF_ACCEPT, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %181

109:                                              ; preds = %96, %91, %80, %75
  %110 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %111 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %156, label %113

113:                                              ; preds = %109
  %114 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %115 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %113
  %119 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %120 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %118
  %124 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %125 = call i32 @nfct_help(%struct.nf_conn* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %123
  %128 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %129 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %130 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %129, i32 0, i32 3
  %131 = load %struct.nf_conn*, %struct.nf_conn** %130, align 8
  %132 = load i32, i32* @GFP_ATOMIC, align 4
  %133 = call i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %128, %struct.nf_conn* %131, i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %5, align 4
  br label %181

138:                                              ; preds = %127
  %139 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %140 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %145 = call i32 @nfct_seqadj(%struct.nf_conn* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %149 = call i32 @nfct_seqadj_ext_add(%struct.nf_conn* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %181

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %143, %138
  br label %156

156:                                              ; preds = %155, %123, %118, %113, %109
  %157 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %158 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %179, label %168

163:                                              ; preds = %156
  %164 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %165 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %163, %160
  %169 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %170 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %171 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ovs_ct_helper(%struct.sk_buff* %169, i32 %172)
  %174 = load i32, i32* @NF_ACCEPT, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %181

179:                                              ; preds = %168, %163, %160
  br label %180

180:                                              ; preds = %179, %70
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %176, %151, %136, %106, %60
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @skb_nfct_cached(%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*) #1

declare dso_local i64 @skb_nfct(%struct.sk_buff*) #1

declare dso_local i32 @nf_conntrack_put(i64) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nf_conntrack_in(%struct.sk_buff*, %struct.nf_hook_state*) #1

declare dso_local i32 @ovs_ct_update_key(%struct.sk_buff*, %struct.ovs_conntrack_info*, %struct.sw_flow_key*, i32, i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @ovs_ct_nat(%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i32 @nfct_seqadj_ext_add(%struct.nf_conn*) #1

declare dso_local i32 @ovs_ct_helper(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
