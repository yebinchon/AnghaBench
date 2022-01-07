; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32, i32 }
%struct.tcf_result = type { i32 }
%struct.net = type { i32 }
%struct.tcf_ct = type { i32, i32 }
%struct.nf_conn = type { i32 }
%struct.nf_hook_state = type { i64, %struct.net*, i32 }
%struct.tcf_ct_params = type { i32, i32, i32, i32, i32, i32, i32, %struct.nf_conn* }

@TCA_CT_ACT_COMMIT = common dso_local global i32 0, align 4
@TCA_CT_ACT_CLEAR = common dso_local global i32 0, align 4
@TCA_CT_ACT_FORCE = common dso_local global i32 0, align 4
@IP_CT_UNTRACKED = common dso_local global i32 0, align 4
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@TC_ACT_STOLEN = common dso_local global i32 0, align 4
@IP_CT_NEW = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_ct_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcf_ct*, align 8
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca %struct.nf_hook_state, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tcf_ct_params*, align 8
  %21 = alloca %struct.nf_conn*, align 8
  %22 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @dev_net(i32 %25)
  store %struct.net* %26, %struct.net** %8, align 8
  %27 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %28 = call %struct.tcf_ct* @to_ct(%struct.tc_action* %27)
  store %struct.tcf_ct* %28, %struct.tcf_ct** %14, align 8
  store %struct.nf_conn* null, %struct.nf_conn** %15, align 8
  %29 = load %struct.tcf_ct*, %struct.tcf_ct** %14, align 8
  %30 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.tcf_ct_params* @rcu_dereference_bh(i32 %31)
  store %struct.tcf_ct_params* %32, %struct.tcf_ct_params** %20, align 8
  %33 = load %struct.tcf_ct*, %struct.tcf_ct** %14, align 8
  %34 = getelementptr inbounds %struct.tcf_ct, %struct.tcf_ct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @READ_ONCE(i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %38 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TCA_CT_ACT_COMMIT, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %43 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TCA_CT_ACT_CLEAR, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %48 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TCA_CT_ACT_FORCE, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %53 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %52, i32 0, i32 7
  %54 = load %struct.nf_conn*, %struct.nf_conn** %53, align 8
  store %struct.nf_conn* %54, %struct.nf_conn** %15, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %3
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %58, i32* %13)
  store %struct.nf_conn* %59, %struct.nf_conn** %21, align 8
  %60 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %61 = icmp ne %struct.nf_conn* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %64 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %63, i32 0, i32 0
  %65 = call i32 @nf_conntrack_put(i32* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load i32, i32* @IP_CT_UNTRACKED, align 4
  %68 = call i32 @nf_ct_set(%struct.sk_buff* %66, %struct.nf_conn* null, i32 %67)
  br label %69

69:                                               ; preds = %62, %57
  br label %202

70:                                               ; preds = %3
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i64 @tcf_ct_skb_nf_family(%struct.sk_buff* %71)
  store i64 %72, i64* %22, align 8
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %210

77:                                               ; preds = %70
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_network_offset(%struct.sk_buff* %78)
  store i32 %79, i32* %17, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @skb_pull_rcsum(%struct.sk_buff* %80, i32 %81)
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i64, i64* %22, align 8
  %86 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %87 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @tcf_ct_handle_fragments(%struct.net* %83, %struct.sk_buff* %84, i64 %85, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @EINPROGRESS, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* @TC_ACT_STOLEN, align 4
  store i32 %95, i32* %19, align 4
  br label %202

96:                                               ; preds = %77
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %210

100:                                              ; preds = %96
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load i64, i64* %22, align 8
  %103 = call i32 @tcf_ct_skb_network_trim(%struct.sk_buff* %101, i64 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %210

107:                                              ; preds = %100
  %108 = load %struct.net*, %struct.net** %8, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %111 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @tcf_ct_skb_nfct_cached(%struct.net* %108, %struct.sk_buff* %109, i32 %112, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %152, label %117

117:                                              ; preds = %107
  %118 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %119 = icmp ne %struct.nf_conn* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %121, i32* %13)
  store %struct.nf_conn* %122, %struct.nf_conn** %21, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i32* @skb_nfct(%struct.sk_buff* %123)
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i32* @skb_nfct(%struct.sk_buff* %127)
  %129 = call i32 @nf_conntrack_put(i32* %128)
  br label %130

130:                                              ; preds = %126, %120
  %131 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %132 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %131, i32 0, i32 0
  %133 = call i32 @nf_conntrack_get(i32* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %136 = load i32, i32* @IP_CT_NEW, align 4
  %137 = call i32 @nf_ct_set(%struct.sk_buff* %134, %struct.nf_conn* %135, i32 %136)
  br label %138

138:                                              ; preds = %130, %117
  %139 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %140 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %16, i32 0, i32 2
  store i32 %139, i32* %140, align 8
  %141 = load %struct.net*, %struct.net** %8, align 8
  %142 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %16, i32 0, i32 1
  store %struct.net* %141, %struct.net** %142, align 8
  %143 = load i64, i64* %22, align 8
  %144 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %16, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = call i32 @nf_conntrack_in(%struct.sk_buff* %145, %struct.nf_hook_state* %16)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* @NF_ACCEPT, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %198

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %107
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %153, i32* %13)
  store %struct.nf_conn* %154, %struct.nf_conn** %21, align 8
  %155 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %156 = icmp ne %struct.nf_conn* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %198

158:                                              ; preds = %152
  %159 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %160 = call i32 @nf_ct_deliver_cached_events(%struct.nf_conn* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %165 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %168 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %167, i32 0, i32 5
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @tcf_ct_act_nat(%struct.sk_buff* %161, %struct.nf_conn* %162, i32 %163, i32 %166, i32* %168, i32 %169)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @NF_ACCEPT, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %158
  br label %210

175:                                              ; preds = %158
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %180 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %181 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %184 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @tcf_ct_act_set_mark(%struct.nf_conn* %179, i32 %182, i32 %185)
  %187 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %188 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %189 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %20, align 8
  %192 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @tcf_ct_act_set_labels(%struct.nf_conn* %187, i32 %190, i32 %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call i32 @nf_conntrack_confirm(%struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %178, %175
  br label %198

198:                                              ; preds = %197, %157, %150
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @skb_push_rcsum(%struct.sk_buff* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %94, %69
  %203 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %204 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @this_cpu_ptr(i32 %205)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = call i32 @bstats_cpu_update(i32 %206, %struct.sk_buff* %207)
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %4, align 4
  br label %217

210:                                              ; preds = %174, %106, %99, %76
  %211 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %212 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @this_cpu_ptr(i32 %213)
  %215 = call i32 @qstats_drop_inc(i32 %214)
  %216 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %210, %202
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.tcf_ct* @to_ct(%struct.tc_action*) #1

declare dso_local %struct.tcf_ct_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_conntrack_put(i32*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn*, i32) #1

declare dso_local i64 @tcf_ct_skb_nf_family(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_ct_handle_fragments(%struct.net*, %struct.sk_buff*, i64, i32) #1

declare dso_local i32 @tcf_ct_skb_network_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @tcf_ct_skb_nfct_cached(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32* @skb_nfct(%struct.sk_buff*) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

declare dso_local i32 @nf_conntrack_in(%struct.sk_buff*, %struct.nf_hook_state*) #1

declare dso_local i32 @nf_ct_deliver_cached_events(%struct.nf_conn*) #1

declare dso_local i32 @tcf_ct_act_nat(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32*, i32) #1

declare dso_local i32 @tcf_ct_act_set_mark(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @tcf_ct_act_set_labels(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @nf_conntrack_confirm(%struct.sk_buff*) #1

declare dso_local i32 @skb_push_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @qstats_drop_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
