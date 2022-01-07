; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32*, i32* }
%struct.Qdisc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.netem_sched_data = type { %struct.TYPE_10__*, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.sk_buff* (%struct.TYPE_10__*)* }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @netem_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netem_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.netem_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %12 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.netem_sched_data* %12, %struct.netem_sched_data** %4, align 8
  br label %13

13:                                               ; preds = %149, %1
  %14 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  %16 = call %struct.sk_buff* @__qdisc_dequeue_head(%struct.TYPE_12__* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %20, %struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %201, %170, %150, %19
  %24 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @qdisc_bstats_update(%struct.Qdisc* %24, %struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %2, align 8
  br label %204

28:                                               ; preds = %13
  %29 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %30 = call %struct.sk_buff* @netem_peek(%struct.netem_sched_data* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %182

33:                                               ; preds = %28
  %34 = call i64 (...) @ktime_get_ns()
  store i64 %34, i64* %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_11__* @netem_skb_cb(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %40 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %46 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @get_slot_next(%struct.netem_sched_data* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %44, %33
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %151

59:                                               ; preds = %55
  %60 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %61 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %151

66:                                               ; preds = %59
  %67 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @netem_erase_head(%struct.netem_sched_data* %67, %struct.sk_buff* %68)
  %70 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %71 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %75, %struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %83 = call i32 @qdisc_dev(%struct.Qdisc* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %87 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %66
  %92 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %93 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @qdisc_pkt_len(%struct.sk_buff* %97)
  %99 = zext i32 %98 to i64
  %100 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %101 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %106 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %91
  %111 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %112 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110, %91
  %117 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @get_slot_next(%struct.netem_sched_data* %117, i64 %118)
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120, %66
  %122 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %123 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = icmp ne %struct.TYPE_10__* %124, null
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i32 @qdisc_pkt_len(%struct.sk_buff* %127)
  store i32 %128, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %131 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = call i32 @qdisc_enqueue(%struct.sk_buff* %129, %struct.TYPE_10__* %132, %struct.sk_buff** %9)
  store i32 %133, i32* %10, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = call i32 @kfree_skb_list(%struct.sk_buff* %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @net_xmit_drop_count(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %145 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %144)
  %146 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %146, i32 1, i32 %147)
  br label %149

149:                                              ; preds = %143, %139, %126
  br label %13

150:                                              ; preds = %121
  br label %23

151:                                              ; preds = %59, %55
  %152 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %153 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = icmp ne %struct.TYPE_10__* %154, null
  br i1 %155, label %156, label %172

156:                                              ; preds = %151
  %157 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %158 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.sk_buff* (%struct.TYPE_10__*)*, %struct.sk_buff* (%struct.TYPE_10__*)** %162, align 8
  %164 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %165 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = call %struct.sk_buff* %163(%struct.TYPE_10__* %166)
  store %struct.sk_buff* %167, %struct.sk_buff** %5, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = icmp ne %struct.sk_buff* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  br label %23

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %151
  %173 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %174 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %173, i32 0, i32 2
  %175 = load i64, i64* %6, align 8
  %176 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %177 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @max(i64 %175, i64 %179)
  %181 = call i32 @qdisc_watchdog_schedule_ns(i32* %174, i32 %180)
  br label %182

182:                                              ; preds = %172, %28
  %183 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %184 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = icmp ne %struct.TYPE_10__* %185, null
  br i1 %186, label %187, label %203

187:                                              ; preds = %182
  %188 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %189 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %188, i32 0, i32 0
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.sk_buff* (%struct.TYPE_10__*)*, %struct.sk_buff* (%struct.TYPE_10__*)** %193, align 8
  %195 = load %struct.netem_sched_data*, %struct.netem_sched_data** %4, align 8
  %196 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %195, i32 0, i32 0
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = call %struct.sk_buff* %194(%struct.TYPE_10__* %197)
  store %struct.sk_buff* %198, %struct.sk_buff** %5, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = icmp ne %struct.sk_buff* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %187
  br label %23

202:                                              ; preds = %187
  br label %203

203:                                              ; preds = %202, %182
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %204

204:                                              ; preds = %203, %23
  %205 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %205
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @__qdisc_dequeue_head(%struct.TYPE_12__*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netem_peek(%struct.netem_sched_data*) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local %struct.TYPE_11__* @netem_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @get_slot_next(%struct.netem_sched_data*, i64) #1

declare dso_local i32 @netem_erase_head(%struct.netem_sched_data*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.TYPE_10__*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb_list(%struct.sk_buff*) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

declare dso_local i32 @qdisc_watchdog_schedule_ns(i32*, i32) #1

declare dso_local i32 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
