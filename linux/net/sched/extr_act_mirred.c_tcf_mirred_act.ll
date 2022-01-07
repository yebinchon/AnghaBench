; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_mirred.c_tcf_mirred_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_mirred.c_tcf_mirred_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i64, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32, i32 }
%struct.tcf_mirred = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@mirred_rec_level = common dso_local global i32 0, align 4
@MIRRED_RECURSION_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Packet exceeded mirred recursion limit on dev %s\0A\00", align 1
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"tc mirred: target device is gone\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"tc mirred to Houston: device %s is down\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TC_ACT_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_mirred_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mirred_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_mirred*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %20 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %21 = call %struct.tcf_mirred* @to_mirred(%struct.tc_action* %20)
  store %struct.tcf_mirred* %21, %struct.tcf_mirred** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* @mirred_rec_level, align 4
  %24 = call i32 @__this_cpu_inc_return(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @MIRRED_RECURSION_LIMIT, align 4
  %27 = icmp ugt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 4
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = call i32 @netdev_name(%struct.net_device* %34)
  %36 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @mirred_rec_level, align 4
  %38 = call i32 @__this_cpu_dec(i32 %37)
  %39 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %39, i32* %4, align 4
  br label %226

40:                                               ; preds = %3
  %41 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %42 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %41, i32 0, i32 5
  %43 = call i32 @tcf_lastuse_update(i32* %42)
  %44 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %45 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @this_cpu_ptr(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @bstats_cpu_update(i32 %48, %struct.sk_buff* %49)
  %51 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %52 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @READ_ONCE(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %56 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @READ_ONCE(i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %60 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @READ_ONCE(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %64 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.net_device* @rcu_dereference_bh(i32 %65)
  store %struct.net_device* %66, %struct.net_device** %11, align 8
  %67 = load %struct.net_device*, %struct.net_device** %11, align 8
  %68 = icmp ne %struct.net_device* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %40
  %74 = call i32 @pr_notice_once(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %209

75:                                               ; preds = %40
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_UP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.net_device*, %struct.net_device** %11, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %209

91:                                               ; preds = %75
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @tcf_mirred_is_act_redirect(i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @skb_at_tc_ingress(%struct.sk_buff* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @tcf_mirred_can_reinsert(i32 %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %100, %97, %91
  %105 = phi i1 [ false, %97 ], [ false, %91 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %110, i32 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %9, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %209

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @tcf_mirred_act_wants_ingress(i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i32 @skb_at_tc_ingress(%struct.sk_buff* %120)
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %117
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @skb_at_tc_ingress(%struct.sk_buff* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %127
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = call i32 @skb_network_header(%struct.sk_buff* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = call i32 @skb_mac_header(%struct.sk_buff* %134)
  %136 = sub nsw i32 %133, %135
  store i32 %136, i32* %19, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %138 = load i32, i32* %19, align 4
  %139 = call i32 @skb_pull_rcsum(%struct.sk_buff* %137, i32 %138)
  br label %146

140:                                              ; preds = %127
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @skb_push_rcsum(%struct.sk_buff* %141, i32 %144)
  br label %146

146:                                              ; preds = %140, %131
  br label %147

147:                                              ; preds = %146, %124, %117
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 4
  %150 = load %struct.net_device*, %struct.net_device** %149, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load %struct.net_device*, %struct.net_device** %11, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 4
  store %struct.net_device* %155, %struct.net_device** %157, align 8
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %147
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %160
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %181 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %183 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @this_cpu_ptr(i32 %185)
  %187 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %188 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %191 = call i32 @skb_tc_reinsert(%struct.sk_buff* %189, %struct.tcf_result* %190)
  %192 = load i32, i32* @mirred_rec_level, align 4
  %193 = call i32 @__this_cpu_dec(i32 %192)
  %194 = load i32, i32* @TC_ACT_CONSUMED, align 4
  store i32 %194, i32* %4, align 4
  br label %226

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195, %147
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %201 = call i32 @dev_queue_xmit(%struct.sk_buff* %200)
  store i32 %201, i32* %14, align 4
  br label %205

202:                                              ; preds = %196
  %203 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %204 = call i32 @netif_receive_skb(%struct.sk_buff* %203)
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  br label %209

209:                                              ; preds = %208, %115, %86, %73
  %210 = load %struct.tcf_mirred*, %struct.tcf_mirred** %8, align 8
  %211 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @this_cpu_ptr(i32 %213)
  %215 = call i32 @qstats_overlimit_inc(i32 %214)
  %216 = load i32, i32* %18, align 4
  %217 = call i32 @tcf_mirred_is_act_redirect(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %219, %209
  br label %222

222:                                              ; preds = %221, %205
  %223 = load i32, i32* @mirred_rec_level, align 4
  %224 = call i32 @__this_cpu_dec(i32 %223)
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %222, %178, %31
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.tcf_mirred* @to_mirred(%struct.tc_action*) #1

declare dso_local i32 @__this_cpu_inc_return(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @netdev_name(%struct.net_device*) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.net_device* @rcu_dereference_bh(i32) #1

declare dso_local i32 @pr_notice_once(i8*) #1

declare dso_local i32 @net_notice_ratelimited(i8*, i32) #1

declare dso_local i32 @tcf_mirred_is_act_redirect(i32) #1

declare dso_local i32 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local i64 @tcf_mirred_can_reinsert(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_mirred_act_wants_ingress(i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tc_reinsert(%struct.sk_buff*, %struct.tcf_result*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @qstats_overlimit_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
