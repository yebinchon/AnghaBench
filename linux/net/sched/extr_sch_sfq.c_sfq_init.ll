; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.sfq_sched_data = type { i32, i32, i32, i32, i32*, i32*, i32, i64, i32, i32, i32*, i64, %struct.TYPE_2__*, i32, i32, i32, %struct.Qdisc* }
%struct.TYPE_2__ = type { i8*, i8* }

@sfq_perturbation = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@SFQ_MAX_DEPTH = common dso_local global i32 0, align 4
@SFQ_MAX_FLOWS = common dso_local global i8* null, align 8
@SFQ_DEFAULT_HASH_DIVISOR = common dso_local global i32 0, align 4
@SFQ_DEFAULT_FLOWS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SFQ_EMPTY_SLOT = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @sfq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.sfq_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.sfq_sched_data* %13, %struct.sfq_sched_data** %8, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %16 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %15, i32 0, i32 16
  store %struct.Qdisc* %14, %struct.Qdisc** %16, align 8
  %17 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %18 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %17, i32 0, i32 15
  %19 = load i32, i32* @sfq_perturbation, align 4
  %20 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %21 = call i32 @timer_setup(i32* %18, i32 %19, i32 %20)
  %22 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %23 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %22, i32 0, i32 14
  %24 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %25 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %24, i32 0, i32 13
  %26 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %28 = call i32 @tcf_block_get(i32* %23, i32* %25, %struct.Qdisc* %26, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %200

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %62, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SFQ_MAX_DEPTH, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** @SFQ_MAX_FLOWS, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %45 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %44, i32 0, i32 12
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %43, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** @SFQ_MAX_FLOWS, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr i8, i8* %52, i64 %53
  %55 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %56 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %55, i32 0, i32 12
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %54, i8** %61, align 8
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %34

65:                                               ; preds = %34
  %66 = load i32, i32* @SFQ_MAX_DEPTH, align 4
  %67 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %68 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SFQ_MAX_DEPTH, align 4
  %70 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %73 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %72, i32 0, i32 11
  store i64 0, i64* %73, align 8
  %74 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %75 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %74, i32 0, i32 10
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @SFQ_DEFAULT_HASH_DIVISOR, align 4
  %77 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %78 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @SFQ_DEFAULT_FLOWS, align 4
  %80 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %81 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %83 = call i32 @qdisc_dev(%struct.Qdisc* %82)
  %84 = call i32 @psched_mtu(i32 %83)
  %85 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %86 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %88 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @SFQ_ALLOT_SIZE(i32 %89)
  %91 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %92 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %94 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %93, i32 0, i32 7
  store i64 0, i64* %94, align 8
  %95 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %96 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %95, i32 0, i32 6
  %97 = call i32 @get_random_bytes(i32* %96, i32 4)
  %98 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %99 = icmp ne %struct.nlattr* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %65
  %101 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %102 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %103 = call i32 @sfq_change(%struct.Qdisc* %101, %struct.nlattr* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %200

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %65
  %110 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %111 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i8* @sfq_alloc(i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %119 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %118, i32 0, i32 5
  store i32* %117, i32** %119, align 8
  %120 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %121 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = trunc i64 %124 to i32
  %126 = call i8* @sfq_alloc(i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %129 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %128, i32 0, i32 4
  store i32* %127, i32** %129, align 8
  %130 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %131 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %109
  %135 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %136 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %134, %109
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %200

142:                                              ; preds = %134
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %157, %142
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %146 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i32, i32* @SFQ_EMPTY_SLOT, align 4
  %151 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %152 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %143

160:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %178, %160
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %164 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %161
  %168 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %169 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @slot_queue_init(i32* %173)
  %175 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @sfq_link(%struct.sfq_sched_data* %175, i32 %176)
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %161

181:                                              ; preds = %161
  %182 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %8, align 8
  %183 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sge i32 %184, 1
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %188 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %189 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %199

192:                                              ; preds = %181
  %193 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %196 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %192, %186
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %199, %139, %106, %31
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @SFQ_ALLOT_SIZE(i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @sfq_change(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i8* @sfq_alloc(i32) #1

declare dso_local i32 @slot_queue_init(i32*) #1

declare dso_local i32 @sfq_link(%struct.sfq_sched_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
