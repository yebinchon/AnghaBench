; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_skbmod.c_tcf_skbmod_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_skbmod.c_tcf_skbmod_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_skbmod = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tcf_skbmod_params = type { i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32*, i32*, i32 }

@MAX_EDIT_LEN = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@SKBMOD_F_DMAC = common dso_local global i32 0, align 4
@SKBMOD_F_SMAC = common dso_local global i32 0, align 4
@SKBMOD_F_ETYPE = common dso_local global i32 0, align 4
@SKBMOD_F_SWAPMAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_skbmod_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbmod_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_skbmod*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_skbmod_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %15 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %16 = call %struct.tcf_skbmod* @to_skbmod(%struct.tc_action* %15)
  store %struct.tcf_skbmod* %16, %struct.tcf_skbmod** %8, align 8
  %17 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %8, align 8
  %18 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %17, i32 0, i32 3
  %19 = call i32 @tcf_lastuse_update(i32* %18)
  %20 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %8, align 8
  %21 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @this_cpu_ptr(i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @bstats_cpu_update(i32 %24, %struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @MAX_EDIT_LEN, align 4
  %29 = call i32 @skb_ensure_writable(%struct.sk_buff* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %126

34:                                               ; preds = %3
  %35 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %8, align 8
  %36 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @READ_ONCE(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @TC_ACT_SHOT, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %126

46:                                               ; preds = %34
  %47 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %8, align 8
  %48 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.tcf_skbmod_params* @rcu_dereference_bh(i32 %49)
  store %struct.tcf_skbmod_params* %50, %struct.tcf_skbmod_params** %10, align 8
  %51 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %10, align 8
  %52 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SKBMOD_F_DMAC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %10, align 8
  %64 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ether_addr_copy(i32* %62, i32* %65)
  br label %67

67:                                               ; preds = %58, %46
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SKBMOD_F_SMAC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %10, align 8
  %78 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ether_addr_copy(i32* %76, i32* %79)
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SKBMOD_F_ETYPE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.tcf_skbmod_params*, %struct.tcf_skbmod_params** %10, align 8
  %88 = getelementptr inbounds %struct.tcf_skbmod_params, %struct.tcf_skbmod_params* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @SKBMOD_F_SWAPMAC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %93
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = sdiv i32 %99, 2
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %13, align 8
  %103 = alloca i32, i64 %101, align 16
  store i64 %101, i64* %14, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @ether_addr_copy(i32* %103, i32* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ether_addr_copy(i32* %112, i32* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @ether_addr_copy(i32* %121, i32* %103)
  %123 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %98, %93
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %134

126:                                              ; preds = %45, %33
  %127 = load %struct.tcf_skbmod*, %struct.tcf_skbmod** %8, align 8
  %128 = getelementptr inbounds %struct.tcf_skbmod, %struct.tcf_skbmod* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @this_cpu_ptr(i32 %130)
  %132 = call i32 @qstats_overlimit_inc(i32 %131)
  %133 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %126, %124
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.tcf_skbmod* @to_skbmod(%struct.tc_action*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.tcf_skbmod_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @qstats_overlimit_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
