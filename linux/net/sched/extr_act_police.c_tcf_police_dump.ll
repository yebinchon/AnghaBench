; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_police.c_tcf_police_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_police.c_tcf_police_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_police = type { i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.tcf_police_params = type { i64, i64, i32, i64, i32, i64, i32, i32 }
%struct.tc_police = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i8*, i8*, i8*, i8* }

@TCA_POLICE_RATE64 = common dso_local global i32 0, align 4
@TCA_POLICE_PAD = common dso_local global i32 0, align 4
@TCA_POLICE_PEAKRATE64 = common dso_local global i32 0, align 4
@TCA_POLICE_TBF = common dso_local global i32 0, align 4
@TCA_POLICE_RESULT = common dso_local global i32 0, align 4
@TCA_POLICE_AVRATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCA_POLICE_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_police_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_police_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_police*, align 8
  %12 = alloca %struct.tcf_police_params*, align 8
  %13 = alloca %struct.tc_police, align 4
  %14 = alloca %struct.tcf_t, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_police* @to_police(%struct.tc_action* %17)
  store %struct.tcf_police* %18, %struct.tcf_police** %11, align 8
  %19 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 5
  %25 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %26 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %25, i32 0, i32 4
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 6
  %31 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %32 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %31, i32 0, i32 5
  %33 = call i32 @refcount_read(i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %30, align 4
  %36 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 7
  %37 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %41 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %44 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %51 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %50, i32 0, i32 0
  %52 = call i32 @lockdep_is_held(i32* %51)
  %53 = call %struct.tcf_police_params* @rcu_dereference_protected(%struct.TYPE_8__* %49, i32 %52)
  store %struct.tcf_police_params* %53, %struct.tcf_police_params** %12, align 8
  %54 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %55 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %59 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PSCHED_NS2TICKS(i32 %60)
  %62 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %64 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %4
  %68 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 1
  %69 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %70 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %69, i32 0, i32 4
  %71 = call i32 @psched_ratecfg_getrate(i32* %68, i32* %70)
  %72 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %73 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %77, 4294967296
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @TCA_POLICE_RATE64, align 4
  %82 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %83 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @TCA_POLICE_PAD, align 4
  %89 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %80, i32 %81, i64 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %202

92:                                               ; preds = %79, %67
  br label %93

93:                                               ; preds = %92, %4
  %94 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %95 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %13, i32 0, i32 0
  %100 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %101 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %100, i32 0, i32 2
  %102 = call i32 @psched_ratecfg_getrate(i32* %99, i32* %101)
  %103 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %104 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp uge i64 %108, 4294967296
  br i1 %109, label %110, label %123

110:                                              ; preds = %98
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load i32, i32* @TCA_POLICE_PEAKRATE64, align 4
  %113 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %114 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @TCA_POLICE_PAD, align 4
  %120 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %111, i32 %112, i64 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %202

123:                                              ; preds = %110, %98
  br label %124

124:                                              ; preds = %123, %93
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = load i32, i32* @TCA_POLICE_TBF, align 4
  %127 = call i64 @nla_put(%struct.sk_buff* %125, i32 %126, i32 32, %struct.tc_police* %13)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %202

130:                                              ; preds = %124
  %131 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %132 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load i32, i32* @TCA_POLICE_RESULT, align 4
  %138 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %139 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @nla_put_u32(%struct.sk_buff* %136, i32 %137, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %202

144:                                              ; preds = %135, %130
  %145 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %146 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = load i32, i32* @TCA_POLICE_AVRATE, align 4
  %152 = load %struct.tcf_police_params*, %struct.tcf_police_params** %12, align 8
  %153 = getelementptr inbounds %struct.tcf_police_params, %struct.tcf_police_params* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @nla_put_u32(%struct.sk_buff* %150, i32 %151, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %202

158:                                              ; preds = %149, %144
  %159 = load i64, i64* @jiffies, align 8
  %160 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %161 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %159, %163
  %165 = call i8* @jiffies_to_clock_t(i64 %164)
  %166 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %14, i32 0, i32 3
  store i8* %165, i8** %166, align 8
  %167 = load i64, i64* @jiffies, align 8
  %168 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %169 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %167, %171
  %173 = call i8* @jiffies_to_clock_t(i64 %172)
  %174 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %14, i32 0, i32 2
  store i8* %173, i8** %174, align 8
  %175 = load i64, i64* @jiffies, align 8
  %176 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %177 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %175, %179
  %181 = call i8* @jiffies_to_clock_t(i64 %180)
  %182 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %14, i32 0, i32 1
  store i8* %181, i8** %182, align 8
  %183 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %184 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @jiffies_to_clock_t(i64 %186)
  %188 = getelementptr inbounds %struct.tcf_t, %struct.tcf_t* %14, i32 0, i32 0
  store i8* %187, i8** %188, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = load i32, i32* @TCA_POLICE_TM, align 4
  %191 = load i32, i32* @TCA_POLICE_PAD, align 4
  %192 = call i64 @nla_put_64bit(%struct.sk_buff* %189, i32 %190, i32 32, %struct.tcf_t* %14, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %158
  br label %202

195:                                              ; preds = %158
  %196 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %197 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock_bh(i32* %197)
  %199 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %5, align 4
  br label %209

202:                                              ; preds = %194, %157, %143, %129, %122, %91
  %203 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %204 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %203, i32 0, i32 0
  %205 = call i32 @spin_unlock_bh(i32* %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = call i32 @nlmsg_trim(%struct.sk_buff* %206, i8* %207)
  store i32 -1, i32* %5, align 4
  br label %209

209:                                              ; preds = %202, %195
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_police* @to_police(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_police_params* @rcu_dereference_protected(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @PSCHED_NS2TICKS(i32) #1

declare dso_local i32 @psched_ratecfg_getrate(i32*, i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_police*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
