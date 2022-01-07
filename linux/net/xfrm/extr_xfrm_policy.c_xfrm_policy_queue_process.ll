; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_queue_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_queue_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.xfrm_policy = type { %struct.xfrm_policy_queue }
%struct.xfrm_policy_queue = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%struct.flowi = type { i32 }
%struct.sk_buff_head = type { i32 }

@polq = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@XFRM_LOOKUP_QUEUE = common dso_local global i32 0, align 4
@DST_XFRM_QUEUE = common dso_local global i32 0, align 4
@XFRM_QUEUE_TMO_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@pol = common dso_local global %struct.xfrm_policy* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xfrm_policy_queue_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_policy_queue_process(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xfrm_policy_queue*, align 8
  %9 = alloca %struct.flowi, align 4
  %10 = alloca %struct.sk_buff_head, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %12 = ptrtoint %struct.xfrm_policy* %11 to i32
  %13 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @polq, i32 0, i32 0), align 4
  %15 = call %struct.xfrm_policy* @from_timer(i32 %12, %struct.timer_list* %13, i32 %14)
  store %struct.xfrm_policy* %15, %struct.xfrm_policy** %6, align 8
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %17 = call %struct.net* @xp_net(%struct.xfrm_policy* %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 0
  store %struct.xfrm_policy_queue* %19, %struct.xfrm_policy_queue** %8, align 8
  %20 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %24, i32 0, i32 1
  %26 = call %struct.sk_buff* @skb_peek(%struct.TYPE_7__* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %31 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %165

34:                                               ; preds = %1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %35)
  store %struct.dst_entry* %36, %struct.dst_entry** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load %struct.sock*, %struct.sock** %38, align 8
  store %struct.sock* %39, %struct.sock** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xfrm_decode_session(%struct.sk_buff* %40, %struct.flowi* %9, i32 %45)
  %47 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %48 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %52 = call i32 @xfrm_dst_path(%struct.dst_entry* %51)
  %53 = call i32 @dst_hold(i32 %52)
  %54 = load %struct.net*, %struct.net** %7, align 8
  %55 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %56 = call i32 @xfrm_dst_path(%struct.dst_entry* %55)
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = load i32, i32* @XFRM_LOOKUP_QUEUE, align 4
  %59 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %54, i32 %56, %struct.flowi* %9, %struct.sock* %57, i32 %58)
  store %struct.dst_entry* %59, %struct.dst_entry** %5, align 8
  %60 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %61 = call i64 @IS_ERR(%struct.dst_entry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %34
  br label %168

64:                                               ; preds = %34
  %65 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %66 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DST_XFRM_QUEUE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %64
  %72 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %73 = call i32 @dst_release(%struct.dst_entry* %72)
  %74 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %75 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @XFRM_QUEUE_TMO_MAX, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %168

80:                                               ; preds = %71
  %81 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %82 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 1
  %85 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %86 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %88 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %87, i32 0, i32 2
  %89 = load i64, i64* @jiffies, align 8
  %90 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %91 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = call i32 @mod_timer(i32* %88, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %80
  %98 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %99 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %98)
  br label %100

100:                                              ; preds = %97, %80
  br label %165

101:                                              ; preds = %64
  %102 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %103 = call i32 @dst_release(%struct.dst_entry* %102)
  %104 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %105 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %106 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %110 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %112 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %111, i32 0, i32 1
  %113 = call i32 @skb_queue_splice_init(%struct.TYPE_7__* %112, %struct.sk_buff_head* %10)
  %114 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %115 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  br label %118

118:                                              ; preds = %150, %147, %101
  %119 = call i32 @skb_queue_empty(%struct.sk_buff_head* %10)
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  %123 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %10)
  store %struct.sk_buff* %123, %struct.sk_buff** %3, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %126 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @xfrm_decode_session(%struct.sk_buff* %124, %struct.flowi* %9, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %132)
  %134 = call i32 @xfrm_dst_path(%struct.dst_entry* %133)
  %135 = call i32 @dst_hold(i32 %134)
  %136 = load %struct.net*, %struct.net** %7, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %137)
  %139 = call i32 @xfrm_dst_path(%struct.dst_entry* %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load %struct.sock*, %struct.sock** %141, align 8
  %143 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %136, i32 %139, %struct.flowi* %9, %struct.sock* %142, i32 0)
  store %struct.dst_entry* %143, %struct.dst_entry** %5, align 8
  %144 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %145 = call i64 @IS_ERR(%struct.dst_entry* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %122
  %148 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  br label %118

150:                                              ; preds = %122
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = call i32 @nf_reset_ct(%struct.sk_buff* %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = call i32 @skb_dst_drop(%struct.sk_buff* %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %156 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %157 = call i32 @skb_dst_set(%struct.sk_buff* %155, %struct.dst_entry* %156)
  %158 = load %struct.net*, %struct.net** %7, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load %struct.sock*, %struct.sock** %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = call i32 @dst_output(%struct.net* %158, %struct.sock* %161, %struct.sk_buff* %162)
  br label %118

164:                                              ; preds = %118
  br label %165

165:                                              ; preds = %164, %100, %29
  %166 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %167 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %166)
  br label %176

168:                                              ; preds = %79, %63
  %169 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %170 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %8, align 8
  %172 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %171, i32 0, i32 1
  %173 = call i32 @skb_queue_purge(%struct.TYPE_7__* %172)
  %174 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %175 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %174)
  br label %176

176:                                              ; preds = %168, %165
  ret void
}

declare dso_local %struct.xfrm_policy* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_decode_session(%struct.sk_buff*, %struct.flowi*, i32) #1

declare dso_local i32 @dst_hold(i32) #1

declare dso_local i32 @xfrm_dst_path(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, i32, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.TYPE_7__*, %struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @skb_queue_purge(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
