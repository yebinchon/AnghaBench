; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_ipt_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_ipt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_ipt = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.xt_entry_target = type { %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.tcf_t = type { i32 }
%struct.tc_cnt = type { %struct.TYPE_9__, i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCA_IPT_TARG = common dso_local global i32 0, align 4
@TCA_IPT_INDEX = common dso_local global i32 0, align 4
@TCA_IPT_HOOK = common dso_local global i32 0, align 4
@TCA_IPT_CNT = common dso_local global i32 0, align 4
@TCA_IPT_TABLE = common dso_local global i32 0, align 4
@TCA_IPT_TM = common dso_local global i32 0, align 4
@TCA_IPT_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_ipt_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ipt_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_ipt*, align 8
  %12 = alloca %struct.xt_entry_target*, align 8
  %13 = alloca %struct.tcf_t, align 4
  %14 = alloca %struct.tc_cnt, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_ipt* @to_ipt(%struct.tc_action* %17)
  store %struct.tcf_ipt* %18, %struct.tcf_ipt** %11, align 8
  %19 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %20 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %22, i32 0, i32 5
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %26 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %25, i32 0, i32 5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.xt_entry_target* @kmemdup(%struct.TYPE_14__* %24, i32 %31, i32 %32)
  store %struct.xt_entry_target* %33, %struct.xt_entry_target** %12, align 8
  %34 = load %struct.xt_entry_target*, %struct.xt_entry_target** %12, align 8
  %35 = icmp ne %struct.xt_entry_target* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %133

41:                                               ; preds = %4
  %42 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %43 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %42, i32 0, i32 7
  %44 = call i64 @atomic_read(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.tc_cnt, %struct.tc_cnt* %14, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %50 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %49, i32 0, i32 6
  %51 = call i64 @refcount_read(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = getelementptr inbounds %struct.tc_cnt, %struct.tc_cnt* %14, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load %struct.xt_entry_target*, %struct.xt_entry_target** %12, align 8
  %57 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %62 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %61, i32 0, i32 5
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strcpy(i32 %60, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i32, i32* @TCA_IPT_TARG, align 4
  %73 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %74 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %73, i32 0, i32 5
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.xt_entry_target*, %struct.xt_entry_target** %12, align 8
  %81 = call i64 @nla_put(%struct.sk_buff* %71, i32 %72, i32 %79, %struct.xt_entry_target* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %41
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = load i32, i32* @TCA_IPT_INDEX, align 4
  %86 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %87 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @nla_put_u32(%struct.sk_buff* %84, i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %83
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = load i32, i32* @TCA_IPT_HOOK, align 4
  %94 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %95 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @nla_put_u32(%struct.sk_buff* %92, i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %91
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = load i32, i32* @TCA_IPT_CNT, align 4
  %102 = bitcast %struct.tc_cnt* %14 to %struct.xt_entry_target*
  %103 = call i64 @nla_put(%struct.sk_buff* %100, i32 %101, i32 24, %struct.xt_entry_target* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %99
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load i32, i32* @TCA_IPT_TABLE, align 4
  %108 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %109 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @nla_put_string(%struct.sk_buff* %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %99, %91, %83, %41
  br label %133

114:                                              ; preds = %105
  %115 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %116 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %115, i32 0, i32 1
  %117 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* @TCA_IPT_TM, align 4
  %120 = load i32, i32* @TCA_IPT_PAD, align 4
  %121 = call i64 @nla_put_64bit(%struct.sk_buff* %118, i32 %119, i32 4, %struct.tcf_t* %13, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %133

124:                                              ; preds = %114
  %125 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %126 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_bh(i32* %126)
  %128 = load %struct.xt_entry_target*, %struct.xt_entry_target** %12, align 8
  %129 = call i32 @kfree(%struct.xt_entry_target* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %5, align 4
  br label %142

133:                                              ; preds = %123, %113, %40
  %134 = load %struct.tcf_ipt*, %struct.tcf_ipt** %11, align 8
  %135 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock_bh(i32* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @nlmsg_trim(%struct.sk_buff* %137, i8* %138)
  %140 = load %struct.xt_entry_target*, %struct.xt_entry_target** %12, align 8
  %141 = call i32 @kfree(%struct.xt_entry_target* %140)
  store i32 -1, i32* %5, align 4
  br label %142

142:                                              ; preds = %133, %124
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_ipt* @to_ipt(%struct.tc_action*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xt_entry_target* @kmemdup(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.xt_entry_target*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.xt_entry_target*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
