; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_ife_info = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown metaid %d dlen %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_ife_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ife_decode(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_ife_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %17 = call %struct.tcf_ife_info* @to_ife(%struct.tc_action* %16)
  store %struct.tcf_ife_info* %17, %struct.tcf_ife_info** %8, align 8
  %18 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %19 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %22 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @this_cpu_ptr(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @bstats_cpu_update(i32 %25, %struct.sk_buff* %26)
  %28 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %29 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %28, i32 0, i32 2
  %30 = call i32 @tcf_lastuse_update(i32* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @skb_push(%struct.sk_buff* %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %3
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32* @ife_decode(%struct.sk_buff* %43, i32* %12)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %53 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @this_cpu_ptr(i32 %55)
  %57 = call i32 @qstats_drop_inc(i32 %56)
  %58 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %58, i32* %4, align 4
  br label %130

59:                                               ; preds = %42
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %10, align 8
  br label %64

64:                                               ; preds = %101, %59
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ult i32* %65, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32* @ife_tlv_meta_decode(i32* %69, i32* %70, i32* %14, i32* %15, i32* null)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %76 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @this_cpu_ptr(i32 %78)
  %80 = call i32 @qstats_drop_inc(i32 %79)
  %81 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %81, i32* %4, align 4
  br label %130

82:                                               ; preds = %68
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = call i64 @find_decode_metaid(%struct.sk_buff* %83, %struct.tcf_ife_info* %84, i32 %85, i32 %86, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %95 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @this_cpu_ptr(i32 %97)
  %99 = call i32 @qstats_overlimit_inc(i32 %98)
  br label %100

100:                                              ; preds = %90, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %11, align 8
  %103 = call i32* @ife_tlv_meta_next(i32* %102)
  store i32* %103, i32** %11, align 8
  br label %64

104:                                              ; preds = %64
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = icmp ne i32* %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @WARN_ON(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %113 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @this_cpu_ptr(i32 %115)
  %117 = call i32 @qstats_drop_inc(i32 %116)
  %118 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %118, i32* %4, align 4
  br label %130

119:                                              ; preds = %104
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = call i32 @eth_type_trans(%struct.sk_buff* %120, %struct.TYPE_4__* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i32 @skb_reset_network_header(%struct.sk_buff* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %119, %111, %74, %51
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.tcf_ife_info* @to_ife(%struct.tc_action*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i64 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32* @ife_decode(%struct.sk_buff*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qstats_drop_inc(i32) #1

declare dso_local i32* @ife_tlv_meta_decode(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @find_decode_metaid(%struct.sk_buff*, %struct.tcf_ife_info*, i32, i32, i32*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @qstats_overlimit_inc(i32) #1

declare dso_local i32* @ife_tlv_meta_next(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
