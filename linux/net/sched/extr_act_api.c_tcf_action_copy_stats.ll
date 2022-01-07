; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_copy_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_copy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gnet_dump = type { i32 }

@TCA_OLD_COMPAT = common dso_local global i64 0, align 8
@TCA_STATS = common dso_local global i32 0, align 4
@TCA_XSTATS = common dso_local global i32 0, align 4
@TCA_PAD = common dso_local global i32 0, align 4
@TCA_ACT_STATS = common dso_local global i32 0, align 4
@TCA_ACT_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_copy_stats(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gnet_dump, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %11 = icmp eq %struct.tc_action* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %82

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %18 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCA_OLD_COMPAT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* @TCA_STATS, align 4
  %25 = load i32, i32* @TCA_XSTATS, align 4
  %26 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %27 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %26, i32 0, i32 8
  %28 = load i32, i32* @TCA_PAD, align 4
  %29 = call i32 @gnet_stats_start_copy_compat(%struct.sk_buff* %23, i32 0, i32 %24, i32 %25, i32* %27, %struct.gnet_dump* %9, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %83

31:                                               ; preds = %22
  br label %39

32:                                               ; preds = %13
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @TCA_ACT_STATS, align 4
  %35 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %36 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %35, i32 0, i32 8
  %37 = load i32, i32* @TCA_ACT_PAD, align 4
  %38 = call i32 @gnet_stats_start_copy(%struct.sk_buff* %33, i32 %34, i32* %36, %struct.gnet_dump* %9, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %82

43:                                               ; preds = %39
  %44 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %45 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %48 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %47, i32 0, i32 6
  %49 = call i64 @gnet_stats_copy_basic(i32* null, %struct.gnet_dump* %9, i32 %46, i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %43
  %52 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %53 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %56 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %55, i32 0, i32 4
  %57 = call i64 @gnet_stats_copy_basic_hw(i32* null, %struct.gnet_dump* %9, i32 %54, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %51
  %60 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %61 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %60, i32 0, i32 3
  %62 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %9, i32* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %66 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %69 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %68, i32 0, i32 1
  %70 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %71 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %9, i32 %67, %struct.TYPE_2__* %69, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64, %59, %51, %43
  br label %82

77:                                               ; preds = %64
  %78 = call i64 @gnet_stats_finish_copy(%struct.gnet_dump* %9)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %82

81:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %83

82:                                               ; preds = %80, %76, %42, %12
  store i32 -1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %81, %30
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @gnet_stats_start_copy_compat(%struct.sk_buff*, i32, i32, i32, i32*, %struct.gnet_dump*, i32) #1

declare dso_local i32 @gnet_stats_start_copy(%struct.sk_buff*, i32, i32*, %struct.gnet_dump*, i32) #1

declare dso_local i64 @gnet_stats_copy_basic(i32*, %struct.gnet_dump*, i32, i32*) #1

declare dso_local i64 @gnet_stats_copy_basic_hw(i32*, %struct.gnet_dump*, i32, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @gnet_stats_finish_copy(%struct.gnet_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
