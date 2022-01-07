; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.skbprio_sched_data = type { i64, i64, %struct.TYPE_3__*, %struct.sk_buff_head* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }

@SKBPRIO_MAX_PRIORITY = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @skbprio_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skbprio_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skbprio_sched_data*, align 8
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca %struct.sk_buff_head*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %15 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = call %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc* %17)
  store %struct.skbprio_sched_data* %18, %struct.skbprio_sched_data** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @min(i32 %21, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %25 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %24, i32 0, i32 3
  %26 = load %struct.sk_buff_head*, %struct.sk_buff_head** %25, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %26, i64 %27
  store %struct.sk_buff_head* %28, %struct.sk_buff_head** %10, align 8
  %29 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %3
  %38 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %38, %struct.sk_buff* %39)
  %41 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %41, %struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i64 @qdisc_pkt_len(%struct.sk_buff* %44)
  %46 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %47 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %45
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %58 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %37
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %64 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %37
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %68 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %74 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %77 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %81, i32* %4, align 4
  br label %219

82:                                               ; preds = %3
  %83 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %84 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ule i64 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %82
  %90 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %91 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %99 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %108 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %109 = call i32 @qdisc_drop(%struct.sk_buff* %106, %struct.Qdisc* %107, %struct.sk_buff** %108)
  store i32 %109, i32* %4, align 4
  br label %219

110:                                              ; preds = %82
  %111 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %111, %struct.sk_buff* %112)
  %114 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %114, %struct.sk_buff* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i64 @qdisc_pkt_len(%struct.sk_buff* %117)
  %119 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %120 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %118
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %130 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %129, i32 0, i32 3
  %131 = load %struct.sk_buff_head*, %struct.sk_buff_head** %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %131, i64 %132
  store %struct.sk_buff_head* %133, %struct.sk_buff_head** %11, align 8
  %134 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %135 = call %struct.sk_buff* @__skb_dequeue_tail(%struct.sk_buff_head* %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %12, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @BUG_ON(i32 %139)
  %141 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %143 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %141, %struct.sk_buff* %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %145 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %146 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %147 = call i32 @qdisc_drop(%struct.sk_buff* %144, %struct.Qdisc* %145, %struct.sk_buff** %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = call i64 @qdisc_pkt_len(%struct.sk_buff* %148)
  %150 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %151 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %157, %149
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %161 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %160, i32 0, i32 2
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i64, i64* %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %169 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %168, i32 0, i32 2
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load i64, i64* %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %177 = call i64 @skb_queue_empty(%struct.sk_buff_head* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %110
  %180 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %181 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %184 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %179
  %188 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %189 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 1
  %193 = zext i1 %192 to i32
  %194 = call i32 @BUG_ON(i32 %193)
  %195 = load i64, i64* %13, align 8
  %196 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %197 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %200 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %206

201:                                              ; preds = %179
  %202 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %203 = call i64 @calc_new_low_prio(%struct.skbprio_sched_data* %202)
  %204 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %205 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %201, %187
  br label %207

207:                                              ; preds = %206, %110
  %208 = load i64, i64* %13, align 8
  %209 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %210 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ugt i64 %208, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i64, i64* %13, align 8
  %215 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %9, align 8
  %216 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %213, %207
  %218 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %217, %89, %75
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(%struct.sk_buff_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i64 @calc_new_low_prio(%struct.skbprio_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
