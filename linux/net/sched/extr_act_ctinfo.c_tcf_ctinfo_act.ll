; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.tcf_ctinfo = type { i32, i32, i32, i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_zone = type { i32, i32 }
%struct.tcf_ctinfo_params = type { i32, i32, i32, i32 }
%struct.nf_conn = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_CT_DEFAULT_ZONE_DIR = common dso_local global i32 0, align 4
@CTINFO_MODE_DSCP = common dso_local global i32 0, align 4
@CTINFO_MODE_CPMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_ctinfo_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ctinfo_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %8 = alloca %struct.tcf_ctinfo*, align 8
  %9 = alloca %struct.nf_conntrack_tuple, align 4
  %10 = alloca %struct.nf_conntrack_zone, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcf_ctinfo_params*, align 8
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %7, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %18 = call %struct.tcf_ctinfo* @to_ctinfo(%struct.tc_action* %17)
  store %struct.tcf_ctinfo* %18, %struct.tcf_ctinfo** %8, align 8
  %19 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %20 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tcf_ctinfo_params* @rcu_dereference_bh(i32 %21)
  store %struct.tcf_ctinfo_params* %22, %struct.tcf_ctinfo_params** %12, align 8
  %23 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %24 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %23, i32 0, i32 2
  %25 = call i32 @tcf_lastuse_update(i32* %24)
  %26 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %27 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %26, i32 0, i32 1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @bstats_update(i32* %27, %struct.sk_buff* %28)
  %30 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %31 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @READ_ONCE(i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @skb_network_offset(%struct.sk_buff* %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i64 @tc_skb_protocol(%struct.sk_buff* %36)
  %38 = load i32, i32* @ETH_P_IP, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %3
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @pskb_may_pull(%struct.sk_buff* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %156

51:                                               ; preds = %41
  %52 = load i32, i32* @NFPROTO_IPV4, align 4
  store i32 %52, i32* %14, align 4
  br label %73

53:                                               ; preds = %3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i64 @tc_skb_protocol(%struct.sk_buff* %54)
  %56 = load i32, i32* @ETH_P_IPV6, align 4
  %57 = call i64 @htons(i32 %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @pskb_may_pull(%struct.sk_buff* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %156

69:                                               ; preds = %59
  %70 = load i32, i32* @NFPROTO_IPV6, align 4
  store i32 %70, i32* %14, align 4
  br label %72

71:                                               ; preds = %53
  br label %156

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %74, i32* %11)
  store %struct.nf_conn* %75, %struct.nf_conn** %13, align 8
  %76 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %77 = icmp ne %struct.nf_conn* %76, null
  br i1 %77, label %106, label %78

78:                                               ; preds = %73
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_network_offset(%struct.sk_buff* %80)
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %84 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %79, i32 %81, i32 %82, i32 %85, %struct.nf_conntrack_tuple* %9)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  br label %156

89:                                               ; preds = %78
  %90 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %91 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %10, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @NF_CT_DEFAULT_ZONE_DIR, align 4
  %95 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %10, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %97 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32 %98, %struct.nf_conntrack_zone* %10, %struct.nf_conntrack_tuple* %9)
  store %struct.nf_conntrack_tuple_hash* %99, %struct.nf_conntrack_tuple_hash** %7, align 8
  %100 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %101 = icmp ne %struct.nf_conntrack_tuple_hash* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %89
  br label %156

103:                                              ; preds = %89
  %104 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %105 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %104)
  store %struct.nf_conn* %105, %struct.nf_conn** %13, align 8
  br label %106

106:                                              ; preds = %103, %73
  %107 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %108 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CTINFO_MODE_DSCP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %106
  %114 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %115 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %120 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %123 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %118, %113
  %128 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %129 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %130 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @tcf_ctinfo_dscp_set(%struct.nf_conn* %128, %struct.tcf_ctinfo* %129, %struct.tcf_ctinfo_params* %130, %struct.sk_buff* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %127, %118
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %138 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CTINFO_MODE_CPMARK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %145 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %146 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %12, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = call i32 @tcf_ctinfo_cpmark_set(%struct.nf_conn* %144, %struct.tcf_ctinfo* %145, %struct.tcf_ctinfo_params* %146, %struct.sk_buff* %147)
  br label %149

149:                                              ; preds = %143, %136
  %150 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  %151 = icmp ne %struct.nf_conntrack_tuple_hash* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %154 = call i32 @nf_ct_put(%struct.nf_conn* %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155, %102, %88, %71, %68, %50
  %157 = load i32, i32* %16, align 4
  ret i32 %157
}

declare dso_local %struct.tcf_ctinfo* @to_ctinfo(%struct.tc_action*) #1

declare dso_local %struct.tcf_ctinfo_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @tc_skb_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @tcf_ctinfo_dscp_set(%struct.nf_conn*, %struct.tcf_ctinfo*, %struct.tcf_ctinfo_params*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_ctinfo_cpmark_set(%struct.nf_conn*, %struct.tcf_ctinfo*, %struct.tcf_ctinfo_params*, %struct.sk_buff*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
