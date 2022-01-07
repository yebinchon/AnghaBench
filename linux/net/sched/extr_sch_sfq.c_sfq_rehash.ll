; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sfq_sched_data = type { i32, i64*, i32, i32, %struct.sfq_slot*, i64, %struct.sfq_slot*, %struct.TYPE_5__* }
%struct.sfq_slot = type { i32, i64, i64, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@SFQ_EMPTY_SLOT = common dso_local global i64 0, align 8
@SFQ_MAX_FLOWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @sfq_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfq_rehash(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.sfq_sched_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfq_slot*, align 8
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %13 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.sfq_sched_data* %13, %struct.sfq_sched_data** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %7)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %61, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %18 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %15
  %22 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %23 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %22, i32 0, i32 6
  %24 = load %struct.sfq_slot*, %struct.sfq_slot** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %24, i64 %26
  store %struct.sfq_slot* %27, %struct.sfq_slot** %6, align 8
  %28 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %29 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %61

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %39, %33
  %35 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %36 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %41 = call %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %4, align 8
  %42 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @sfq_dec(%struct.sfq_sched_data* %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %7, %struct.sk_buff* %45)
  br label %34

47:                                               ; preds = %34
  %48 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %49 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %51 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %50, i32 0, i32 5
  %52 = call i32 @red_set_vars(%struct.TYPE_7__* %51)
  %53 = load i64, i64* @SFQ_EMPTY_SLOT, align 8
  %54 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %55 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %58 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %53, i64* %60, align 8
  br label %61

61:                                               ; preds = %47, %32
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %15

64:                                               ; preds = %15
  %65 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %66 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %65, i32 0, i32 4
  store %struct.sfq_slot* null, %struct.sfq_slot** %66, align 8
  br label %67

67:                                               ; preds = %206, %100, %64
  %68 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %7)
  store %struct.sk_buff* %68, %struct.sk_buff** %4, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %70, label %207

70:                                               ; preds = %67
  %71 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @sfq_hash(%struct.sfq_sched_data* %71, %struct.sk_buff* %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %75 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  %81 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %82 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %81, i32 0, i32 6
  %83 = load %struct.sfq_slot*, %struct.sfq_slot** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %83, i64 %84
  store %struct.sfq_slot* %85, %struct.sfq_slot** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @SFQ_EMPTY_SLOT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %70
  %90 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %91 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %90, i32 0, i32 7
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @SFQ_MAX_FLOWS, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %139, %99
  %101 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %101, %struct.sk_buff* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i64 @qdisc_pkt_len(%struct.sk_buff* %104)
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %9, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @kfree_skb(%struct.sk_buff* %110)
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %67

114:                                              ; preds = %89
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %117 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %115, i64* %121, align 8
  %122 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %123 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %122, i32 0, i32 6
  %124 = load %struct.sfq_slot*, %struct.sfq_slot** %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %124, i64 %125
  store %struct.sfq_slot* %126, %struct.sfq_slot** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %130 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %114, %70
  %132 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %133 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %136 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %100

140:                                              ; preds = %131
  %141 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i32 @slot_queue_add(%struct.sfq_slot* %141, %struct.sk_buff* %142)
  %144 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %145 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %140
  %149 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %150 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %153 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %152, i32 0, i32 5
  %154 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %155 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @red_calc_qavg(i64 %151, %struct.TYPE_7__* %153, i64 %156)
  %158 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %159 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  br label %161

161:                                              ; preds = %148, %140
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = call i64 @qdisc_pkt_len(%struct.sk_buff* %162)
  %164 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %165 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @sfq_inc(%struct.sfq_sched_data* %168, i64 %169)
  %171 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %172 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %206

175:                                              ; preds = %161
  %176 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %177 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %176, i32 0, i32 4
  %178 = load %struct.sfq_slot*, %struct.sfq_slot** %177, align 8
  %179 = icmp eq %struct.sfq_slot* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %183 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %197

184:                                              ; preds = %175
  %185 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %186 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %185, i32 0, i32 4
  %187 = load %struct.sfq_slot*, %struct.sfq_slot** %186, align 8
  %188 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %191 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %194 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %193, i32 0, i32 4
  %195 = load %struct.sfq_slot*, %struct.sfq_slot** %194, align 8
  %196 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %195, i32 0, i32 2
  store i64 %192, i64* %196, align 8
  br label %197

197:                                              ; preds = %184, %180
  %198 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %199 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %200 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %199, i32 0, i32 4
  store %struct.sfq_slot* %198, %struct.sfq_slot** %200, align 8
  %201 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %202 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.sfq_slot*, %struct.sfq_slot** %6, align 8
  %205 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %197, %161
  br label %67

207:                                              ; preds = %67
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %210 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, %208
  store i32 %213, i32* %211, align 4
  %214 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %214, i32 %215, i32 %216)
  ret void
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot*) #1

declare dso_local i32 @sfq_dec(%struct.sfq_sched_data*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @red_set_vars(%struct.TYPE_7__*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @sfq_hash(%struct.sfq_sched_data*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @slot_queue_add(%struct.sfq_slot*, %struct.sk_buff*) #1

declare dso_local i32 @red_calc_qavg(i64, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @sfq_inc(%struct.sfq_sched_data*, i64) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
