; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.choke_sched_data = type { i64, i64, i32, %struct.TYPE_9__, %struct.sk_buff**, %struct.TYPE_10__, %struct.red_parms }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i8* }
%struct.red_parms = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @choke_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choke_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.choke_sched_data*, align 8
  %9 = alloca %struct.red_parms*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.choke_sched_data* %12, %struct.choke_sched_data** %8, align 8
  %13 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %14 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %13, i32 0, i32 6
  store %struct.red_parms* %14, %struct.red_parms** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_11__* @choke_skb_cb(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %19 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %20 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %19, i32 0, i32 5
  %21 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @red_calc_qavg(%struct.red_parms* %18, %struct.TYPE_10__* %20, i64 %24)
  %26 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %27 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %30 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %29, i32 0, i32 5
  %31 = call i64 @red_is_idling(%struct.TYPE_10__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %35 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %34, i32 0, i32 5
  %36 = call i32 @red_end_of_idle_period(%struct.TYPE_10__* %35)
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %39 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %43 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %48 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 8
  br label %159

50:                                               ; preds = %37
  %51 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i64 @choke_match_random(%struct.choke_sched_data* %51, %struct.sk_buff* %52, i32* %10)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %57 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %64 = call i32 @choke_drop_by_idx(%struct.Qdisc* %61, i32 %62, %struct.sk_buff** %63)
  br label %207

65:                                               ; preds = %50
  %66 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %67 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %71 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %65
  %75 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %76 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 8
  %78 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %79 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %78)
  %80 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %81 = call i64 @use_harddrop(%struct.choke_sched_data* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %74
  %84 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %85 = call i32 @use_ecn(%struct.choke_sched_data* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87, %83, %74
  %92 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %93 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %207

97:                                               ; preds = %87
  %98 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %99 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %158

103:                                              ; preds = %65
  %104 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %105 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %103
  %111 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %112 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %113 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %112, i32 0, i32 5
  %114 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %115 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @red_mark_probability(%struct.red_parms* %111, %struct.TYPE_10__* %113, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %110
  %121 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %122 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 8
  %124 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %125 = call i8* @red_random(%struct.red_parms* %124)
  %126 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %127 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %130 = call i32 @qdisc_qstats_overlimit(%struct.Qdisc* %129)
  %131 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %132 = call i32 @use_ecn(%struct.choke_sched_data* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %120
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %134, %120
  %139 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %140 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %207

144:                                              ; preds = %134
  %145 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %146 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %110
  br label %157

151:                                              ; preds = %103
  %152 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %153 = call i8* @red_random(%struct.red_parms* %152)
  %154 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %155 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  br label %157

157:                                              ; preds = %151, %150
  br label %158

158:                                              ; preds = %157, %97
  br label %159

159:                                              ; preds = %158, %46
  %160 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %161 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %165 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %168, label %197

168:                                              ; preds = %159
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %171 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %170, i32 0, i32 4
  %172 = load %struct.sk_buff**, %struct.sk_buff*** %171, align 8
  %173 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %174 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %172, i64 %175
  store %struct.sk_buff* %169, %struct.sk_buff** %176, align 8
  %177 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %178 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  %181 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %182 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = and i64 %180, %184
  %186 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %187 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  %188 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %189 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  %193 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %193, %struct.sk_buff* %194)
  %196 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %196, i32* %4, align 4
  br label %213

197:                                              ; preds = %159
  %198 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %199 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %205 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %206 = call i32 @qdisc_drop(%struct.sk_buff* %203, %struct.Qdisc* %204, %struct.sk_buff** %205)
  store i32 %206, i32* %4, align 4
  br label %213

207:                                              ; preds = %138, %91, %55
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %210 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %211 = call i32 @qdisc_drop(%struct.sk_buff* %208, %struct.Qdisc* %209, %struct.sk_buff** %210)
  %212 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %207, %197, %168
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_11__* @choke_skb_cb(%struct.sk_buff*) #1

declare dso_local i64 @red_calc_qavg(%struct.red_parms*, %struct.TYPE_10__*, i64) #1

declare dso_local i64 @red_is_idling(%struct.TYPE_10__*) #1

declare dso_local i32 @red_end_of_idle_period(%struct.TYPE_10__*) #1

declare dso_local i64 @choke_match_random(%struct.choke_sched_data*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @choke_drop_by_idx(%struct.Qdisc*, i32, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_qstats_overlimit(%struct.Qdisc*) #1

declare dso_local i64 @use_harddrop(%struct.choke_sched_data*) #1

declare dso_local i32 @use_ecn(%struct.choke_sched_data*) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i64 @red_mark_probability(%struct.red_parms*, %struct.TYPE_10__*, i64) #1

declare dso_local i8* @red_random(%struct.red_parms*) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
