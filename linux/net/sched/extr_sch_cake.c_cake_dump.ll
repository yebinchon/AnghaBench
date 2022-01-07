; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cake_sched_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_CAKE_BASE_RATE64 = common dso_local global i32 0, align 4
@TCA_CAKE_PAD = common dso_local global i32 0, align 4
@TCA_CAKE_FLOW_MODE = common dso_local global i32 0, align 4
@CAKE_FLOW_MASK = common dso_local global i32 0, align 4
@TCA_CAKE_RTT = common dso_local global i32 0, align 4
@TCA_CAKE_TARGET = common dso_local global i32 0, align 4
@TCA_CAKE_MEMORY = common dso_local global i32 0, align 4
@TCA_CAKE_AUTORATE = common dso_local global i32 0, align 4
@CAKE_FLAG_AUTORATE_INGRESS = common dso_local global i32 0, align 4
@TCA_CAKE_INGRESS = common dso_local global i32 0, align 4
@CAKE_FLAG_INGRESS = common dso_local global i32 0, align 4
@TCA_CAKE_ACK_FILTER = common dso_local global i32 0, align 4
@TCA_CAKE_NAT = common dso_local global i32 0, align 4
@CAKE_FLOW_NAT_FLAG = common dso_local global i32 0, align 4
@TCA_CAKE_DIFFSERV_MODE = common dso_local global i32 0, align 4
@TCA_CAKE_WASH = common dso_local global i32 0, align 4
@CAKE_FLAG_WASH = common dso_local global i32 0, align 4
@TCA_CAKE_OVERHEAD = common dso_local global i32 0, align 4
@CAKE_FLAG_OVERHEAD = common dso_local global i32 0, align 4
@TCA_CAKE_RAW = common dso_local global i32 0, align 4
@TCA_CAKE_ATM = common dso_local global i32 0, align 4
@TCA_CAKE_MPU = common dso_local global i32 0, align 4
@TCA_CAKE_SPLIT_GSO = common dso_local global i32 0, align 4
@CAKE_FLAG_SPLIT_GSO = common dso_local global i32 0, align 4
@TCA_CAKE_FWMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @cake_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cake_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.cake_sched_data* %9, %struct.cake_sched_data** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @TCA_OPTIONS, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %211

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @TCA_CAKE_BASE_RATE64, align 4
  %19 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TCA_CAKE_PAD, align 4
  %23 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %17, i32 %18, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %211

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @TCA_CAKE_FLOW_MODE, align 4
  %29 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %30 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAKE_FLOW_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %211

37:                                               ; preds = %26
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TCA_CAKE_RTT, align 4
  %40 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %41 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %211

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i32, i32* @TCA_CAKE_TARGET, align 4
  %49 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %50 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %211

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @TCA_CAKE_MEMORY, align 4
  %58 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %59 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %211

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* @TCA_CAKE_AUTORATE, align 4
  %67 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %68 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAKE_FLAG_AUTORATE_INGRESS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @nla_put_u32(%struct.sk_buff* %65, i32 %66, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %211

79:                                               ; preds = %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load i32, i32* @TCA_CAKE_INGRESS, align 4
  %82 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %83 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CAKE_FLAG_INGRESS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @nla_put_u32(%struct.sk_buff* %80, i32 %81, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %211

94:                                               ; preds = %79
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load i32, i32* @TCA_CAKE_ACK_FILTER, align 4
  %97 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %98 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @nla_put_u32(%struct.sk_buff* %95, i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %211

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = load i32, i32* @TCA_CAKE_NAT, align 4
  %106 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %107 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CAKE_FLOW_NAT_FLAG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @nla_put_u32(%struct.sk_buff* %104, i32 %105, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %211

118:                                              ; preds = %103
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = load i32, i32* @TCA_CAKE_DIFFSERV_MODE, align 4
  %121 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %122 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @nla_put_u32(%struct.sk_buff* %119, i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %211

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load i32, i32* @TCA_CAKE_WASH, align 4
  %130 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %131 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CAKE_FLAG_WASH, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i64 @nla_put_u32(%struct.sk_buff* %128, i32 %129, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %211

142:                                              ; preds = %127
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = load i32, i32* @TCA_CAKE_OVERHEAD, align 4
  %145 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %146 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @nla_put_u32(%struct.sk_buff* %143, i32 %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %211

151:                                              ; preds = %142
  %152 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %153 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CAKE_FLAG_OVERHEAD, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = load i32, i32* @TCA_CAKE_RAW, align 4
  %161 = call i64 @nla_put_u32(%struct.sk_buff* %159, i32 %160, i32 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %211

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %151
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = load i32, i32* @TCA_CAKE_ATM, align 4
  %168 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %169 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @nla_put_u32(%struct.sk_buff* %166, i32 %167, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %211

174:                                              ; preds = %165
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = load i32, i32* @TCA_CAKE_MPU, align 4
  %177 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %178 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @nla_put_u32(%struct.sk_buff* %175, i32 %176, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %211

183:                                              ; preds = %174
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = load i32, i32* @TCA_CAKE_SPLIT_GSO, align 4
  %186 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %187 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @CAKE_FLAG_SPLIT_GSO, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i64 @nla_put_u32(%struct.sk_buff* %184, i32 %185, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %211

198:                                              ; preds = %183
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = load i32, i32* @TCA_CAKE_FWMARK, align 4
  %201 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %202 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %201, i32 0, i32 10
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @nla_put_u32(%struct.sk_buff* %199, i32 %200, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %211

207:                                              ; preds = %198
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %210 = call i32 @nla_nest_end(%struct.sk_buff* %208, %struct.nlattr* %209)
  store i32 %210, i32* %3, align 4
  br label %212

211:                                              ; preds = %206, %197, %182, %173, %163, %150, %141, %126, %117, %102, %93, %78, %63, %54, %45, %36, %25, %15
  store i32 -1, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %207
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
